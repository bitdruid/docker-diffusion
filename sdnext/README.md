# docker_diffusion

```
services:
  sdnext:
    image: sdnext:latest
    container_name: sdnext
    hostname: sdnext
    network_mode: bridge
    restart: unless-stopped
    ports:
      - "5050:7860"
    volumes:
      - "sdnext:/sdnext"
      - "/output:/sdnext/outputs # bind
      - "/checkpoints:/sdnext/models/Stable-diffusion" # bind
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: all
              capabilities: [gpu]

volumes:
  sdnext:
```
