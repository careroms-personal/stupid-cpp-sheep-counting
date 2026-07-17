FROM gcc:13 AS builder

RUN apt-get update && apt-get install -y cmake

WORKDIR /app
COPY sheep-counting.cpp .

RUN g++ -static -o sheep-counting sheep-counting.cpp

FROM debian:bookworm-slim

COPY --from=builder /app/sheep-counting /app/sheep-counting

CMD ["/app/sheep-counting"]
