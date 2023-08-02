# Use the official Golang image as the base image
FROM golang:1.17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the source code and go.mod/go.sum into the container at /app
COPY . .

# Initialize Go module (replace "mywebapp" with your preferred module name)
RUN go mod init mywebapp

# Build the Go application inside the container
RUN go build -o main .

# Expose the port that the web app will run on (must match the app's port)
EXPOSE 8880

# Command to run the Go application when the container starts
CMD ["./main"]
