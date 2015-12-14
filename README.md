# alpine-ss
Shadowsocks docker image based on Alpine Linux.
Tiny Small, only 49MB size!!!

# Usage:
docker run -p [port]:[port] -d soniclidi/alpine-ss -s 0.0.0.0 -p [port] -k [password] -m [method]

# Example:
docker run -p 8388:8388 -d soniclidi/alpine-ss -s 0.0.0.0 -p 8388 -k password -m aes-256-cfb 
