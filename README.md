# docker_diffusion

Checkout some stable-diffusion UIs in docker by building itself easy and straightforward.<br>

# Important

- Works only for nvidia (because i only have that on my server)
- Install `nvidia-container-toolkit` to use
- First start takes a while because container must be installed

## easydiffusion
Origin: https://github.com/easydiffusion/easydiffusion <br>
Tryout: https://github.com/bitdruid/docker_diffusion/tree/easydiffusion
## comfyui
Origin: https://github.com/comfyanonymous/ComfyUI <br>
Tryout: https://github.com/bitdruid/docker_diffusion/tree/comfyui
## sdnext
Origin: https://github.com/vladmandic/sdnext <br>
Tryout: https://github.com/bitdruid/docker_diffusion/tree/sdnext
## stable-diffusion-webui
Origin: https://github.com/AUTOMATIC1111/stable-diffusion-webui <br>
Tryout: https://github.com/bitdruid/docker_diffusion/tree/sdwebui
## stable-diffusion-webui-forge
Origin: https://github.com/lllyasviel/stable-diffusion-webui-forge <br>
Tryout: https://github.com/bitdruid/docker_diffusion/tree/sdwebui-forge

# Use
- Clone the Repo `git clone https://github.com/bitdruid/docker_diffusion`
- Cd into desired ui `cd <ui>`
- Build the image like `docker buildx build -t <image-name>:latest . --load`
- Create a compose with the given stats in README.md or insert into portainer!
- <b>Modify volumes as needed!
- <b>Modify ports as needed!
