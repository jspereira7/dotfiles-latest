# Contents

<!-- toc -->

- [Repo overview](#repo-overview)
- [How do I apply all your dotfiles?](#how-do-i-apply-all-your-dotfiles)
- [In case you want to test out my Neobean config](#in-case-you-want-to-test-out-my-neobean-config)
- [Some of my YouTube videos (click on the images)](#some-of-my-youtube-videos-click-on-the-images)
  * [The Power User's 2025 Guide to macOS ricing | Yabai, Simple-bar, SketchyBar, Fastfetch, Btop & More](#the-power-users-2025-guide-to-macos-ricing--yabai-simple-bar-sketchybar-fastfetch-btop--more)
  * [How I Recreated (and Improved) My Obsidian Note-Taking Workflow in Neovim](#how-i-recreated-and-improved-my-obsidian-note-taking-workflow-in-neovim)
  * [Images in Neovim | Setting up Snacks Image and Comparing it to Image.nvim](#images-in-neovim--setting-up-snacks-image-and-comparing-it-to-imagenvim)
  * [Why I'm Moving from Telescope to Snacks Picker | Why I'm not Using fzf-lua | Frecency feature](#why-im-moving-from-telescope-to-snacks-picker--why-im-not-using-fzf-lua--frecency-feature)
  * [Advanced MINI.FILES Keymaps for Neovim | System Clipboard Integration and More](#advanced-minifiles-keymaps-for-neovim--system-clipboard-integration-and-more)
  * [My complete Neovim markdown setup and workflow in 2025](#my-complete-neovim-markdown-setup-and-workflow-in-2025)
  * [Ghostty Shaders | Ghostty config file syntax highlighting | glsl treesitter | glsl_analyzer](#ghostty-shaders--ghostty-config-file-syntax-highlighting--glsl-treesitter--glsl_analyzer)
  * [Neovim or Neovide, what is the difference?](#neovim-or-neovide-what-is-the-difference)
  * [Why I switched from Alacritty to kitty, and how to configure kitty](#why-i-switched-from-alacritty-to-kitty-and-how-to-configure-kitty)
- [Point my `~/.zshrc` file to the desired repo](#point-my-zshrc-file-to-the-desired-repo)

<!-- tocstop -->

## Repo overview

- This repo is where I keep the dotfiles I'm currently using
- There is an old repo:
  [linkarzu/dotfiles-public](https://github.com/linkarzu/dotfiles-public)
  - This is referenced in my youtube
    [2024 macos workflow video series](https://youtube.com/playlist?list=PLZWMav2s1MZTanWwNKYvS8qgwl0HBH9J-&si=q6ByPmN8I7SOBKmX)
  - **That old repo is no longer maintained, so use this new repo instead**

## How do I apply all your dotfiles?

- The idea is that you to scavenge around, find the things that are useful to
  you, and apply them to your own config
- In case you actually want to apply my entire dotfiles settings on your own
  macOS computer, you can, I have a
  [blogpost article](https://linkarzu.com/posts/2024-macos-workflow/clone-dotfiles/)
  in which I describe the process and a video as well (This is one of my first
  videos, but it still works)

<div align="left">
     <a href="https://youtu.be/XBjfzySpGdE">
         <img
           src="https://res.cloudinary.com/daqwsgmx6/image/upload/v1706358848/youtube/2024-macos-workflow/04-dotfiles-playback"
           alt="04 - What are dotfiles and how to clone them"
           width="600"
         />
     </a>
 </div>

## In case you want to test out my Neobean config

- This is the Neovim config you see me using on each one of my videos
- In case you want to test it out without modifying or changing your existing
  neovim config, run the `git clone` commands below to clone my dotfiles in your
  .config directory and we will run my config below

```bash
mkdir -p ~/.config
git clone git@github.com:linkarzu/dotfiles-latest ~/.config/linkarzu/dotfiles-latest
```

- Open the newly downloaded `neobean` config with:

```sh
NVIM_APPNAME=linkarzu/dotfiles-latest/neovim/neobean nvim
```

- You can create an alias in your `.bashrc` or `.zshrc` file to run my config

```bash
alias neobean='NVIM_APPNAME=linkarzu/dotfiles-latest/neovim/neobean nvim'
```

- Then to run this config, just run `neobean`

---

- I have a video in which I show you how to download and setup my `neobean`
  config, but also other neovim distributions, so I highly recommend you check
  it out:
  - [Download and test multiple Neovim distros and configurations - Without affecting your current config](https://youtu.be/xN1hdY1cc3E)

<div align="left">
    <a href="https://youtu.be/xN1hdY1cc3E">
        <img
          src="./assets/img/imgs/250220-thux-multiple-neovim-distros.avif"
          alt=" Download and test multiple Neovim distros and configurations - Without affecting your current config "
          width="600"
        />
    </a>
</div>

## Some of my YouTube videos (click on the images)

### The Power User's 2025 Guide to macOS ricing | Yabai, Simple-bar, SketchyBar, Fastfetch, Btop & More

<div align="left">
    <a href=" https://youtu.be/8pqFtkQip4I ">
        <img
          src="./assets/img/imgs/250120-macos-ricing-link.avif"
          alt=" The Power User's 2025 Guide to macOS ricing | Yabai, Simple-bar, SketchyBar, Fastfetch, Btop & More "
          width="600"
        />
    </a>
</div>

### How I Recreated (and Improved) My Obsidian Note-Taking Workflow in Neovim

<div align="left">
    <a href=" https://youtu.be/k_g8q5JeisY ">
        <img
          src="./assets/img/imgs/250220-thux-neovim-like-obsidian.avif"
          alt=" How I Recreated (and Improved) My Obsidian Note-Taking Workflow in Neovim "
          width="600"
        />
    </a>
</div>

### Images in Neovim | Setting up Snacks Image and Comparing it to Image.nvim

<div align="left">
    <a href=" https://youtu.be/G27MHyT-u2I ">
        <img
          src="./assets/img/imgs/250218-thux-snacks-image.avif"
          alt=" Images in Neovim | Setting up Snacks Image and Comparing it to Image.nvim "
          width="600"
        />
    </a>
</div>

### Why I'm Moving from Telescope to Snacks Picker | Why I'm not Using fzf-lua | Frecency feature

<div align="left">
    <a href=" https://youtu.be/7hEWG3GP6m0 ">
        <img
          src="./assets/img/imgs/250210-thux-snacks-picker.avif"
          alt=" Why I'm Moving from Telescope to Snacks Picker | Why I'm not Using fzf-lua | Frecency feature "
          width="600"
        />
    </a>
</div>

### Advanced MINI.FILES Keymaps for Neovim | System Clipboard Integration and More

<div align="left">
    <a href=" https://youtu.be/BzblG2eV8dU ">
        <img
          src="./assets/img/imgs/minifiles-yazi.png"
          alt=" Advanced MINI.FILES Keymaps for Neovim – System Clipboard Integration and More "
          width="600"
        />
    </a>
</div>

### My complete Neovim markdown setup and workflow in 2025

<div align="left">
    <a href=" https://youtu.be/1YEbKDlxfss ">
        <img
          src="./assets/img/imgs/250220-neovim-workflow-2025.avif"
          alt=" My complete Neovim markdown setup and workflow in 2025 "
          width="600"
        />
    </a>
</div>

### Ghostty Shaders | Ghostty config file syntax highlighting | glsl treesitter | glsl_analyzer

<div align="left">
    <a href=" https://youtu.be/yJDn__NhOqI ">
        <img
          src="./assets/img/imgs/250220-thux-ghostty-shaders.avif"
          alt=" Ghostty Shaders | Ghostty config file syntax highlighting | glsl treesitter | glsl_analyzer "
          width="600"
        />
    </a>
</div>

### Neovim or Neovide, what is the difference?

<div align="left">
    <a href="https://youtu.be/cY1KSeIkQCs">
        <img
          src="https://res.cloudinary.com/daqwsgmx6/image/upload/q_75/v1717456413/youtube/neovim/neovim-vs-neovide.avif"
          alt="Neovim or Neovide, what is the difference?"
          width="600"
        />
    </a>
</div>

### Why I switched from Alacritty to kitty, and how to configure kitty

<div align="left">
    <a href="https://youtu.be/MZNvjclifD8">
        <img
          src="https://res.cloudinary.com/daqwsgmx6/image/upload/q_75/v1719362711/youtube/macos/alacritty-to-kitty.avif"
          alt="Why I switched from Alacritty to kitty, and how to configure kitty"
          width="600"
        />
    </a>
</div>

## Point my `~/.zshrc` file to the desired repo

<!-- prettier-ignore -->
> [!NOTE]
> These instructions are for me, GTFO

- Commands below will create all the files if they don't yet exist, if they do,
  it will update them.
- `-n` allows the link to be treated as a normal file if it is a symlink to a
  directory
- `-f` "force" overwrites without warning if it already exists

```bash
ln -snf ~/github/dotfiles-latest/zshrc/zshrc-file.sh ~/.zshrc >/dev/null 2>&1
source ~/.zshrc
```

```bash
# This is on the other repo where I keep my ssh config files
ln -snf ~/github/dotfiles/sshconfig-pers ~/.ssh/config >/dev/null 2>&1
```
