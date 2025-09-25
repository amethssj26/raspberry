version: "2.1"
services:
  emby:
    image: ghcr.io/linuxserver/emby
    container_name: emby
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=America/Panama
    volumes:
      - /home/pi/emby/config:/config
      - /home/pi/media:/media
    ports:
      - 8096:8096
      - 8920:8920
    restart: unless-stopped
