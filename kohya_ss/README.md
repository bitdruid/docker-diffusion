# kohya_ss

```
  kohya_ss:
    image: kohya_ss:latest
    container_name: kohya_ss
    hostname: kohya_ss
    network_mode: bridge
    user: 1000:33
    restart: no
    ports:
      - "5051:7860"
    #tmpfs:
    #  - /tmp
    volumes:
      - "dataset:/dataset"
      - "dataset:/app/logs"
      - /tmp/.X11-unix:/tmp/.X11-unix
      - "/kohya_input:/app/inputs" # bind for input images to train on
      - "/kohya_output:/app/outputs" # bind for prepare training output
      - "/kohya_presets:/app/presets/custom" # bind to presets
      - "/checkpoints:/app/models" # bind to downloaded base checkpoints
    environment:
      - "SAFETENSORS_FAST_GPU: 1"
      #- "TENSORBOARD_PORT: 5012"
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: all
              capabilities: [gpu]
```
