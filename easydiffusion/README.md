# docker_diffusion

```
services:
  easydiffusion:
    image: easydiffusion:latest
    container_name: easydiffusion
    hostname: easydiffusion
    network_mode: bridge
    restart: unless-stopped
    ports:
      - "5050:9000"
    volumes:
      - "easydiffusion:/easy-diffusion"
      - "/checkpoints:/easy-diffusion/models/stable-diffusion" # bind
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: 1
              capabilities: [gpu]

volumes:
  easydiffusion:
```
