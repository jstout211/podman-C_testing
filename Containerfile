FROM ubuntu:latest
RUN apt update && apt install -y build-essential
ADD src/triangle.c .
RUN gcc -O2 -static -o /usr/local/bin/triangle triangle.c
CMD ["/usr/local/bin/triangle"]
