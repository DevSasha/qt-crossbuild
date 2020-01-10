FROM ubuntu:latest
ENTRYPOINT ["/bin/bash", "-l", "-c"]
RUN \
	apt update && \
	apt -y install bash build-essential curl git qt5-default && \
	apt -y autoremove && \
	apt -y autoclean && \
	apt -y clean && \
	useradd nonroot
