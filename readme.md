# Setup Scripts

The goal of this repo is to save all my personal configurations, separated by OS then by App, in order to easily be able to replicate them on any new system.

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
