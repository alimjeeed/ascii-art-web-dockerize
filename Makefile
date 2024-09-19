build:
		docker build -t my-go-app .

run:
		docker run -p 8000:8000 my-go-app