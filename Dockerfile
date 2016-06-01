FROM golang:alpine

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/vanderk/docker_web_app

# Build the docker_web_app command inside the container.
RUN go install github.com/vanderk/docker_web_app

# Run the docker_web_app command by default when the container starts.
ENTRYPOINT /go/bin/docker_web_app

# Document that the service listens on port 8080.
EXPOSE 8080






