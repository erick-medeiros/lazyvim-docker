# lazyvim-docker

initial command

```sh
docker run -w /root -it alpine:edge sh -uelic '
  apk add git lazygit neovim ripgrep alpine-sdk --update
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  cd ~/.config/nvim
  nvim
'
```

## solution

### up container

with docker compose

```sh
docker compose up -d
```

with docker

```sh
docker build  -t lazyvim-image .
docker run -w /root --name lazyvim -d lazyvim-image
```

### execute lazyvim

```sh
docker container exec --tty --interactive lazyvim nvim
```