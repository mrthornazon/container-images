FROM scratch
ADD amzn2-container-raw-2.0.20220912.1-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
    && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-e805f912bcb0541240fd70fe7e7f23e3b79a2c5ce3c273054b3efc087e0cc6a1.tar.gz" \
    && echo "726894e6d2bbc0a7301d9a191b1197b554ad07319a01e726c537d27e73953785  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
