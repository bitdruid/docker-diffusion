# docker_diffusion

```
 sdwebui-forge:
    image: sdwebui-forge:latest
    container_name: sdwebui-forge
    hostname: sdwebui-forge
    network_mode: bridge
    restart: unless-stopped
    ports:
      - "5050:7860"
    volumes:
      - "sdwebui-forge:/stable-diffusion-webui-forge"
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
  sdwebui-forge:
```
