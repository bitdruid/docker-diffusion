FROM python:3.10

RUN apt update && apt install -y git libgl1 libglib2.0-0

RUN git clone https://github.com/lllyasviel/stable-diffusion-webui-forge

ENTRYPOINT ["/stable-diffusion-webui-forge/webui.sh", "-f", "--listen", "--enable-insecure-extension-acces"]
