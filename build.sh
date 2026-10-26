#!/usr/bin/env bash
set -e

echo "=========================================================="
echo "          BUILDING THATARCHOS (BRONME DE)"
echo "=========================================================="

if [ "$EUID" -ne 0 ]; then
  echo "[-] Error: Please run build.sh with sudo or as root."
  exit 1
fi

chmod +x airootfs/usr/bin/* 2>/dev/null || true

WORK_DIR="/tmp/thatarchos-build"
OUT_DIR="./out"

mkdir -p "${OUT_DIR}"
rm -rf "${WORK_DIR}"

echo "[+] Starting mkarchiso..."
mkarchiso -v -w "${WORK_DIR}" -o "${OUT_DIR}" .

echo "=========================================================="
echo "[+] BUILD COMPLETE!"
echo "[+] Your bootable ThatArchOS ISO is located in: ${OUT_DIR}/"
echo "=========================================================="
