# docker_diffusion

```
services:
  sdwebui:
    image: sdwebui:latest
    container_name: sdwebui
    hostname: sdwebui
    network_mode: bridge
    restart: unless-stopped
    ports:
      - "5050:7860"
    volumes:
      - "sdwebui:/stable-diffusion-webui"
      - "/output:/stable-diffusion-webui/outputs # bind
      - "/checkpoints:/stable-diffusion-webui/models/Stable-diffusion" # bind
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: all
              capabilities: [gpu]

volumes:
  sdwebui:
```
