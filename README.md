# LCF (Linux Config Files)
LCF is an open source Linux config installer to easily sync your Linux config files between devices.

> Warning: this application is in early development and a lot of features still need to be developed. At the moment it is usable but quite limited in features.

## How to use LCF
If you want to use this for own use, its the best to fork the repo. 

When forked and cloned first empty the `./bash` and `./nvim` directories in the repository.

Run `./lcf -ubv` (Update Bash Neovim) to fetch the config files from your system and put them in the repository.

Run `./lcf -ibc` (Install Bash Neovim) to install the config files form the repo to the default locations of the config.

## Usecases
Personally I use multible Linux systems. I use this to easily always have the same configs.
I can make changes on any device, fetch the changes with LCF and push them to GitHub.

Next I can fetch the repository on another system and install the configs.

## Current config support
- [x] `bash`
- [x] `neovim`
- [ ] `vim`
- [ ] `i3`

# Development
- [x] Fetch config files
- [x] Install config files
- [x] Show help
- [ ] Install all confgs with 1 option
- [ ] Fetch all configs with 1 option
- [ ] Translate to `c/cpp`?
- [ ] Add custom directories
- [ ] Show all current tracking direcories
- [ ] GUI version?

> WARNING: this overwrites any existing config files so be carefull and backup existing config files first
