# LazyVim

## How to install

```bash
# for linux
git clone git@github.com:Xyberonzyx7/LazyVim.git ~/.config/nvim
```
```bash
# for windows
git clone git@github.com:Xyberonzyx7/LazyVim.git $env:LOCALAPPDATA\nvim
```

## How to install unstable release of NeoVIM (Without package manager)

- Search for desired nvim.appimage here
  > https://github.com/neovim/neovim/releases/

- Download nvim.appimage
  ```bash
  wget <link-to-the-nvim.appimage>
  ```

- Make it executable
  ```bash
  $ chmod u+x nvim.appimage
  ```

- Backup and replace current nvim 
  ```bash
  $ which nvim # look for nvim location: usually /usr/bin/nvim
  $ sudo mv /usr/bin/nvim /usr/bin/nvim.old
  $ sudo mv nvim.appimage /usr/bin/nvim
  ```

## Other Info

- ~/.config/nvim/lazy-lock.json : It records the exact state of all your plugins, including their versions and revisions.
- ~/.config/nvim/lazyvim.json : The file keeps track of the extras (additional features or plugins) that you have enabled using the :LazyExtras command

