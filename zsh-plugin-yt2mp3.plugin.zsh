#!/bin/zsh

if [[ -x $(command -v brew) ]] && [[ ! -x $(command -v yt-dlp) ]]; then
	brew reinstall yt-dlp
fi

if ! [[ -x $(command -v yt-dlp) ]]; then
	echo "Please install yt-dlp:";
	echo "\tHomebrew: brew install yt-dlp"
else

	###
	 # Download a Youtube Video as mp3 via URL
	 #
	 # @since 1.0.0
	 ##
	 alias yt2mp3="yt-dlp --extract-audio --audio-format mp3"
fi
