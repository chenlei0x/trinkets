#! /bin/bash
repo_alias=tmux_repo
repo_uri=https://download.opensuse.org/repositories/utilities/openSUSE_Leap_42.3/
tmux=tmux
sudo zypper ar -G ${repo_uri} ${repo_alias}
sudo zypper ref ${repo_alias}
sudo zypper in -y --repo ${repo_alias} $tmux
sudo zypper mr --disable $repo_alias
