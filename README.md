🚀 HTTP Server in C++ with Docker and CMake

This project is a simple HTTP server written in C++ using CMake for building and Docker for containerization.

📚 Project Structure

src/ — Source code of the server

CMakeLists.txt — Build configuration file for CMake

Dockerfile — Configuration for creating a Docker container

🛠️ Requirements

Before getting started, ensure you have installed:

C++

Docker

Cmake

⚙️ Build and Run with Docker

Clone the repository:

git clone https://github.com/YOUR_USERNAME/http_server_cpp.git
cd http_server_cpp

Build the Docker image:

docker build -t http_server .

Run the container:

docker run -p 8080:8080 http_server

Check the server:

curl http://localhost:8080

Or open your browser and navigate to: http://localhost:8080

📝 Local Build with CMake

Create a build directory:

mkdir build && cd build

Run CMake:

cmake .. && make

Start the server:

./http_server

Check the server:

curl http://localhost:8080


