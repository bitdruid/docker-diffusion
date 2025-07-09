FROM python:3.12

RUN apt update && apt install -y git

RUN git clone https://github.com/comfyanonymous/ComfyUI

RUN cat << 'EOF' > /ComfyUI/start.sh
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu128
pip install -r /ComfyUI/requirements.txt
python /ComfyUI/main.py --listen 0.0.0.0
EOF

CMD ["bash", "/ComfyUI/start.sh"]
