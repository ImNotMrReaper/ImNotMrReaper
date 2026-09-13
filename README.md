<div align="center">

# 💀 Hey there, I'm Mr. Reaper 👋

**Linux Enthusiast • Systems & Hardware Tinkerer • Open-Source Developer**

*"Turning gaming hardware into daily productivity tools & pushing Linux customization to its limits."*

<br/>

[![TikTok](https://img.shields.io/badge/TikTok-@imnotmrreaper-000000?style=for-the-badge&logo=tiktok&logoColor=white)](https://www.tiktok.com/@imnotmrreaper)
[![Instagram](https://img.shields.io/badge/Instagram-@imnotmrreaper-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/imnotmrreaper/)
[![Steam](https://img.shields.io/badge/Steam-Mr.Reaper-171a21?style=for-the-badge&logo=steam&logoColor=white)](https://steamcommunity.com/profiles/76561198841624975/)
[![Reddit](https://img.shields.io/badge/Reddit-u/ImNotMrReaper-FF4500?style=for-the-badge&logo=reddit&logoColor=white)](https://www.reddit.com/user/ImNotMrReaper/)
[![Facebook](https://img.shields.io/badge/Facebook-MrReaper420-1877F2?style=for-the-badge&logo=facebook&logoColor=white)](https://www.facebook.com/MrReaper420)

</div>

---

### ⚡ Universal 1-Line Ecosystem Installer

Install any or all of my open-source tools across **Ubuntu, Debian, Fedora, Arch Linux, and openSUSE** with an interactive setup wizard:

```bash
curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/ImNotMrReaper/main/install.sh | bash
```

> **Automated Setup:** Run non-interactively with `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/ImNotMrReaper/main/install.sh | bash -s -- --all`

| Project | Description | 1-Line Remote Install |
| :--- | :--- | :--- |
| 🎮 [**joycon-mouse**](https://github.com/ImNotMrReaper/joycon-mouse) | Precision desktop air-mouse, couch media remote & macro suite for Switch Joy-Cons & gamepads | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/joycon-mouse/main/install.sh \| bash` |
| 🛡️ [**howdy-face-id-linux**](https://github.com/ImNotMrReaper/howdy-face-id-linux) | Linux Face ID biometric engine with multi-camera shutter failover & 5-angle calibration | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/howdy-face-id-linux/main/install.sh \| sudo bash` |
| 👆 [**digitalpersona-uareu-linux**](https://github.com/ImNotMrReaper/digitalpersona-uareu-linux) | Digital Persona U.are.U 4500 USB fingerprint driver with tuned Bozorth3 matching & LED control | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/digitalpersona-uareu-linux/main/install.sh \| sudo bash` |
| 📝 [**reapers-notes**](https://github.com/ImNotMrReaper/reapers-notes) | Modern GTK4 / Libadwaita text editor with local real-time Whisper dictation & biometric vault | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/reapers-notes/main/install.sh \| bash` |
| ⚡ [**antigravity-tui-autocorrect-spellcheck-suggest**](https://github.com/ImNotMrReaper/antigravity-tui-autocorrect-spellcheck-suggest) | Real-time grey ghost-text completion, Tab acceptance & typo spellchecker for Antigravity TUI | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/antigravity-tui-autocorrect-spellcheck-suggest/main/install.sh \| bash` |
| 🔬 [**deep-research**](https://github.com/ImNotMrReaper/deep-research) | Autonomous multi-hop deep research engine with iterative query expansion & verified reports | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/deep-research/main/install.sh \| bash` |
| 🤖 [**antigravity-link**](https://github.com/ImNotMrReaper/antigravity-link) | Cross-platform peer AI collaboration, cryptographic conflict prevention & tandem agent sync | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/antigravity-link/main/install.sh \| bash` |
| 🖥️ [**display-window-restorer**](https://github.com/ImNotMrReaper/display-window-restorer) | Auto-restore window positions, geometries & split-screen layouts on monitor reconnect | `curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/display-window-restorer/main/install.sh \| bash` |

---

### 🚀 Featured Project

<table>
  <tr>
    <td width="100%">
      <h3>🎮 <a href="https://github.com/ImNotMrReaper/joycon-mouse">Joy-Con Mouse &amp; Universal Media Remote for Linux</a></h3>
      <p>
        A zero-dependency Linux user-space driver that transforms Nintendo Switch Joy-Cons and gamepads into a wireless desktop mouse, couch media remote, and interactive terminal companion.
      </p>
      <p>
        <a href="https://github.com/ImNotMrReaper/joycon-mouse"><img src="https://img.shields.io/badge/Python-3.8+-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python" /></a>
        <a href="https://github.com/ImNotMrReaper/joycon-mouse"><img src="https://img.shields.io/badge/Platform-Linux%20(Wayland%20%26%20X11)-FCC624?style=flat-square&logo=linux&logoColor=black" alt="Linux" /></a>
        <a href="https://github.com/ImNotMrReaper/joycon-mouse"><img src="https://img.shields.io/badge/Kernel-uinput%20%26%20evdev-00d2be?style=flat-square" alt="Kernel" /></a>
        <a href="https://github.com/ImNotMrReaper/joycon-mouse/releases/latest"><img src="https://img.shields.io/github/v/release/ImNotMrReaper/joycon-mouse?style=flat-square&color=7764d8" alt="Release" /></a>
        <a href="https://github.com/ImNotMrReaper/joycon-mouse"><img src="https://img.shields.io/badge/Dependencies-Zero%20External-success?style=flat-square" alt="Zero Dependencies" /></a>
        <a href="https://github.com/ImNotMrReaper/joycon-mouse/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-yellow?style=flat-square" alt="License" /></a>
      </p>
      <ul>
        <li><b>Zero External Dependencies:</b> 100% Python standard library talking directly to Linux kernel <code>/dev/uinput</code> and <code>evdev</code> ioctls.</li>
        <li><b>Precision Cursor:</b> Analog thumbstick with hybrid acceleration curve and hardware drift deadzones.</li>
        <li><b>Universal Media Remote:</b> Dedicated side-rail volume (<code>SL</code>/<code>SR</code>), continuous 5s seek, and instant skip.</li>
        <li><b>Modular Plugin Engine:</b> Plug-and-play extensible modes (Terminal Shell, Slideshow Clicker, Gaming Hotkeys).</li>
        <li><b>Auto-Dormant Detection:</b> Automatically releases exclusive grab when Steam games or emulators launch.</li>
        <li><b>1-Click Installer &amp; Setup Wizard:</b> Non-technical terminal GUI with automated multi-distro dependency resolution.</li>
      </ul>
      <p>⭐ <b>Star the project:</b> <a href="https://github.com/ImNotMrReaper/joycon-mouse">github.com/ImNotMrReaper/joycon-mouse</a></p>
    </td>
  </tr>
</table>

---

### 🛠️ Tech Stack & Tooling

<p align="left">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" alt="Linux" />
  <img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Ubuntu" />
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python" />
  <img src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash" />
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git" />
  <img src="https://img.shields.io/badge/PyCharm-000000?style=for-the-badge&logo=pycharm&logoColor=white" alt="PyCharm" />
  <img src="https://img.shields.io/badge/Steam-171a21?style=for-the-badge&logo=steam&logoColor=white" alt="Steam" />
</p>

- **Kernel Subsystems:** Linux `evdev`, `/dev/uinput`, Force-Feedback (`EV_FF`), `systemd-hwdb`.
- **Display Protocols:** Wayland (Mutter) &amp; X11 window management.
- **Hardware Integration:** Nintendo Switch Joy-Cons, Gamepads, Bluetooth BlueZ HID protocols.

---

<div align="center">

### 📊 GitHub Activity

<p align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=ImNotMrReaper&show_icons=true&theme=tokyonight&hide_border=true&bg_color=0d1117&title_color=7764d8&icon_color=00d2be&text_color=94a3b8" alt="GitHub Stats" />
  <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=ImNotMrReaper&layout=compact&theme=tokyonight&hide_border=true&bg_color=0d1117&title_color=7764d8&text_color=94a3b8" alt="Top Languages" />
</p>

<p>
  <i>"Code crafted for performance, zero bloat, and maximum freedom."</i>
</p>

</div>
