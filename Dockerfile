FROM alpine:edge 

RUN apk add git lazygit neovim ripgrep alpine-sdk --update && \
	git clone https://github.com/LazyVim/starter ~/.config/nvim && \
	cd ~/.config/nvim

CMD ["nvim"]