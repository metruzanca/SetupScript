<p align="center">
  <a href="#">
    <img alt="zbestdev" src="https://raw.githubusercontent.com/metruzanca/SetupScript/master/docs/assets/SetupScript.png" width="60" />
  </a>
</p>
<h1 align="center">
  SetupScript
</h1>

The goal of this repo is to save all my personal configurations, separated by OS then by App, in order to easily be able to replicate them on any new system.

> This project is only in initial concept phase. Though `macos/spicetify.sh` does work on its own.

## Why make this?

No real reason. Just for fun.
You're probably asking this if you're familiar with symlinking dotfiles. I had a similar setup over at [metruzanca/dotfiles](https://github.com/metruzanca/dotfiles). But since I started mixing os's (initially linux and wsl, then also macos) that setup became difficult to use.
Yeah, I could just make different branches and that would work. But meh, I wanna try and make this. Sexy CLIs are fun.

## Todo

Idealy I'd like to make a github action that takes all the separate files from each os and packages them into a cli-setup script that i can call like

```bash
bash `${curl -d "http://setup.zbest.dev"}`
```

(maybe its own domain?)

This would then open a cli menu with 3(or more) options of os, then a multi-select dropdown with things you want to enable/disable. Maybe with toggle-able categories. Allowing to easily decide what you want to install/setup.

Maybe create a `~/.config/setupScript/?` that stores things already installed. Potentially could also use semver for each script and use that to determine if the setup is most up to date.

Make my cli installable? Make my cli able to use anyone's setup repo files.

Rust or Go instead of Bash for the main script if installable/downloadable?

> (_linux, mac & wsl(similar to linux but minus a few things) maybe windows if i use choco or scoop_)
