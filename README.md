# THATARCHOS with BRONME Desktop Environment
> The Arch Linux distribution with seamless Windows app compatibility and the **BRONME** Cupertino-inspired desktop shell.

---

## 🍏 What is BRONME?
**BRONME** (pronounced *Bron-Me*) is a custom desktop shell engineered to deliver the iconic Cupertino aesthetic without violating Apple copyrights or trademarks:
* **The Floating Glass Dock**: Bottom-centered frosted glass dock with app bounce animations on launch and fluid hover magnification.
* **Global Cupertino Top Menubar**: Clean translucent top bar with unified status controls, Wi-Fi/Audio toggles, and the BRONME Distro menu.
* **Traffic Light Window Controls**: Left-aligned minimalist rounded controls (🔴 Close, 🟡 Minimize, 🟢 Maximize).
* **Spotlight Search**: Press `Super + Space` to summon the centered floating search bar for instant application launching, file search, and math calculations.
* **Legally Clean Assets**: Uses 100% original, open-source squircle icon sets and custom SVG glyphs (no Apple proprietary assets or logos).

---

## 🪟 Out-of-the-Box Windows Essentials
No terminal setup required. Double-clicking any Windows `.exe` or `.msi` file launches it directly:
* **`wine-staging`**: Latest bleeding-edge Wine compatibility layer.
* **`wine-mono`**: Automatic .NET Framework runtime emulation.
* **`wine-gecko`**: Embedded Internet Explorer / MSHTML browser engine.
* **`dxvk` & `vkd3d`**: DirectX 9, 10, 11, and 12 translated directly into Vulkan for maximum 3D performance.
* **`winetricks` & `cabextract`**: Easy installation of Windows DLLs, fonts, and Visual C++ redistributables.
* **`Bottles`**: Pre-installed graphical container manager to run office tools, Adobe suites, and games in isolated Windows environments.
* **Windows Font Compatibility**: Pre-loaded TrueType fonts (Arial, Times New Roman, Calibri equivalents) to prevent missing text bugs.

---

## 📂 File Architecture
```
thatarchos/
├── airootfs/
│   ├── etc/
│   │   ├── skel/
│   │   │   ├── .config/
│   │   │   │   ├── bronme/         # BRONME Shell configurations
│   │   │   │   ├── autostart/      # Auto-launch dock & topbar on login
│   │   │   │   └── mimeapps.list   # Sets Wine as default handler for .exe/.msi
│   │   │   └── Desktop/
│   │   └── pacman.conf             # Multilib enabled for 32-bit Windows binaries
│   └── usr/
│       ├── bin/
│       │   ├── bronme-spotlight    # Fast spotlight launcher script
│       │   └── wine-smart-launcher # Auto-runner for Windows executables
│       └── share/
│           └── applications/       # .desktop integration for Windows files
├── packages.x86_64                 # Complete Arch package manifest
├── profiledef.sh                   # ISO metadata & permission table
├── Dockerfile                      # Build ThatArchOS inside Docker
└── build.sh                        # Build script
```

---

## 🚀 How to Build the ISO

### Using Docker (Windows or Linux):
```powershell
cd C:\Users\mohmed\.gemini\antigravity\scratch\thatarchos
docker build -t thatarchos-builder .
docker run --privileged -v ${PWD}/out:/distro/out thatarchos-builder
```

### On an Arch Linux Host:
```bash
cd thatarchos
sudo ./build.sh
```
