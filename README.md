
## Dotfiles

🚀 always gonna be work in progress.

---

**put `kanata/` in `/etc` and `kanata.service` inside one of [systemd system unit directories](https://www.freedesktop.org/software/systemd/man/latest/systemd.unit.html#System%20Unit%20Search%20Path) (e.g `usr/local/lib/systemd/system`), or make a symlink from those directories**

&nbsp;

### Install

> [!NOTE]
> i haven't implemented auto-download, installing this dotfiles, using the install script means that you've installed packages that im using with this dotfiles, most importantly, [UWSM](https://github.com/Vladimir-csp/uwsm) as i'm using it to manage the environment variables, and [GNU Stow](https://github.com/aspiers/stow) to make a symlink to config directory.

Clone this repo

```
git clone https://github.com/hyoureii/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles
```

Run the install script

```
./install.sh
```
