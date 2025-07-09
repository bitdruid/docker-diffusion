# docker_diffusion

```
services:
  comfyui:
    image: comfyui:latest
    container_name: comfyui
    hostname: comfyui
    network_mode: bridge
    restart: unless-stopped
    ports:
      - "5050:8188"
    volumes:
      - "comfyui_packages:/usr/local/lib/python3.12/site-packages"
      - "/output:/ComfyUI/output" # bind
      - "/checkpoints:/ComfyUI/models/checkpoints" # bind
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: all
              capabilities: [gpu]

volumes:
  comfyui_packages:
```
