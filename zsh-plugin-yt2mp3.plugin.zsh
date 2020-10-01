#!/bin/zsh

if [[ -x $(command -v brew) ]] && [[ ! -x $(command -v youtube-dl) ]]; then
	brew reinstall youtube-dl
fi

if ! [[ -x $(command -v youtube-dl) ]]; then
	echo "Please install youtube-dl:";
	echo "\tHomebrew: brew install youtube-dl"
else

	###
	 # Download a Youtube Video as mp3 via URL
	 #
	 # @since 1.0.0
	 ##
	 alias yt2mp3="youtube-dl --extract-audio --audio-format mp3"
fi
