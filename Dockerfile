FROM ubuntu:22.04

RUN apt update && apt install -y \
    cmake \
    clang \
    make \
    libstdc++-12-dev \
    libssl-dev \
    && apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN mkdir -p build

WORKDIR /app/build

RUN cmake .. -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang
RUN make

EXPOSE 8080

CMD ["./http_server"]
