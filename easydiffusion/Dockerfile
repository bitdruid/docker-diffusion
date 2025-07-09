FROM ubuntu:latest

RUN apt-get update && apt install -y wget unzip curl bzip2 ffmpeg libsm6 libxext6

RUN wget https://github.com/easydiffusion/easydiffusion/releases/latest/download/Easy-Diffusion-Linux.zip

RUN unzip Easy-Diffusion-Linux.zip

WORKDIR /easy-diffusion

RUN echo "net:\n  listen_port: 9000\n  listen_to_network: true" > config.yaml

CMD ["bash", "start.sh"]
