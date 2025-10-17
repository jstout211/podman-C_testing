FROM ubuntu:latest
RUN apt update && apt install -y build-essential
#RUN apt -y install build-essential # gcc glibc-static
ADD src/triangle.c .
RUN gcc -O2 -static -o triangle.sh triangle.c
COPY triangle.sh /usr/local/bin/traingle


#RUN strip podman_hello_world
#FROM scratch
#LABEL maintainer="Podman Maintainers"
#LABEL artist="Máirín Ní Ḋuḃṫaiġ, X/Twitter:@mairin"
#LABEL io.containers.capabilities="sys_chroot"
#COPY --from=builder podman_hello_world /usr/local/bin/podman_hello_world
CMD ["/usr/local/bin/triangle"]
