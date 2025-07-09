FROM python:3.13

RUN apt update && apt install -y git libgl1 libglib2.0-0

RUN git clone https://github.com/vladmandic/sdnext

# listen: network available
ENTRYPOINT ["/sdnext/webui.sh", "-f", "--listen"]
