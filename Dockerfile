#build stage
# Build stage
FROM golang:alpine AS builder
RUN apk add --no-cache git
WORKDIR /go/src/app
COPY . .
RUN go get -d -v ./...
RUN go build -o /go/bin/app -v .

# Final stage
FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /app

# Copy the Go binary from the builder stage
COPY --from=builder /go/bin/app /app

# Copy the templates and static files from the build context to the image
COPY --from=builder /go/src/app/templates /app/templates
COPY --from=builder /go/src/app/static /app/static
COPY --from=builder /go/src/app/banners /app/banners

# Set the entrypoint
ENTRYPOINT ["/app/app"]

# Metadata and port
LABEL Name=asciiartwebdockerize Version=0.0.1
EXPOSE 8000