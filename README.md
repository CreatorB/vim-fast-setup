# 💻 Vim Fast Setup

🖼️ _"Although I love Linux, my workplace uses Windows, so I use WSL to run Kali Linux"_

This repository provides a quick and easy way to set up a powerful Vim environment with pre-configured settings. For seasoned Vim users, this setup will help you get up and running with a highly productive Vim configuration in no time. Perhaps you have different preferences and settings, you may need to adjust the rest.

**NOTE:** You can skip the *Quick Start* steps by automating them with the `setup.sh` script provided in this repository:

```
cd ~ ; git clone git@github.com:CreatorB/vim-fast-setup.git ; cd vim-fast-setup ; chmod +x setup.sh ; ./setup.sh
```

Also you will need to add the following lines to your .gitignore file when using this VIM in your project:

```
CoffeeScript
Enable
Files
JavaScript
Misc
Shell
Status
VIM
Visual
bufExplorer
vimgrep
solid
```

## Quick Start

### 1. Clone this Repository

Clone this repository to your local machine

```
git clone git@github.com:CreatorB/vim-fast-setup.git
```

### 2. Clone The Ultimate vimrc Repository

Clone this repository to your local machine

```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
```
```
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

You should read the [The Ultimate vimrc](https://github.com/amix/vimrc) first to get the details.

### 3. Set The vim config

Copy the `my_configs.vim` file to `~/.vim_runtime/my_configs.vim`:

```
cp vim-fast-setup/my_configs.vim ~/.vim_runtime/my_configs.vim
```

### 4. Set up the plugins (typically, I use Wakatime for tracking coding time and Codeium for copilot code).

```
git clone --depth=1 https://github.com/wakatime/vim-wakatime ~/.vim_runtime/pack/plugins/start/vim-wakatime
```
```
git clone --depth=1 https://github.com/Exafunction/codeium.vim ~/.vim_runtime/pack/plugins/start/codeium
```

### 5. An awesome CLI references for you CLI fans

- **MySQL Cheat Sheet:** A handy reference for MySQL commands. [View on gist](https://gist.github.com/bradtraversy/c831baaad44343cc945e76c2e30927b3)

## Contributing

Contributions are welcome! If you have any improvements or new features to add, please feel free to submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Happy Vimming! 🚀
