# Build ThatArchOS ISO inside an isolated Arch Linux container
FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --needed --noconfirm \
    archiso \
    git \
    make \
    binutils \
    patch \
    sudo

WORKDIR /distro
COPY . /distro

RUN chmod +x /distro/build.sh
RUN chmod +x /distro/airootfs/usr/bin/* 2>/dev/null || true

ENTRYPOINT ["/distro/build.sh"]
