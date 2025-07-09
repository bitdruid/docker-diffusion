FROM python:3.10

RUN apt update && apt install -y git libgl1 libglib2.0-0

RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui

# listen: network available
ENTRYPOINT ["/stable-diffusion-webui/webui.sh", "-f", "--listen", "--enable-insecure-extension-acces"]
