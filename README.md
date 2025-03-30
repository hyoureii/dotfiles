
## Dotfiles

🚀 always gonna be work in progress.

---

**put `kanata/` in `/etc` and `kanata.service` inside one of [systemd system unit directories](https://www.freedesktop.org/software/systemd/man/latest/systemd.unit.html#System%20Unit%20Search%20Path) (e.g `usr/local/lib/systemd/system`), or make a symlink from those directories**

&nbsp;

### Install

Clone this repo

```
git clone https://github.com/hyoureii/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles
```

Install [GNU Stow](https://github.com/aspiers/stow)

> i'm using Arch *(BTW)* so i used pacman, use whatever package manager ur os is using

```
sudo pacman -S stow
```

Using stow to automatically create symlinks

```
stow
```
