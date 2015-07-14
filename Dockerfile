FROM boot2docker/boot2docker
RUN curl -L https://experimental.docker.com/builds/Linux/x86_64/docker-latest > $ROOTFS/usr/local/bin/docker && chmod +x $ROOTFS/usr/local/bin/docker
RUN /make_iso.sh
CMD ["cat", "boot2docker.iso"]
