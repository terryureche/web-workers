Build the Docker image:
> docker build -t master-app:latest .

Run image locally after build for testing:
> docker run -p 8080:8080 express-app:latest

For testing run:
> curl http://localhost:8080/ping
