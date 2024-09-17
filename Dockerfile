FROM golang:1.22

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY go.mod ./
RUN go mod download

# Copy the source code.
COPY . .

# Set permissions for the application files
RUN chmod -R 755 /app

# Build the Go application
RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-gs-ping

EXPOSE 8000

# Run
CMD ["/docker-gs-ping"]