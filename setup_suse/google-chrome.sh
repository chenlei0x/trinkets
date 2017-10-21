#! /bin/bash
repo_alias=google_chrome
repo_uri=http://dl.google.com/linux/chrome/rpm/stable/x86_64 
chrome=google-chrome-stable
sudo zypper ar ${repo_uri} ${repo_alias}
sudo zypper ref ${repo_alias}
sudo zypper in $chrome
sudo zypper mr --disable $repo_alias
