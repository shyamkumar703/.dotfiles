#!/bin/sh
if which brew >/dev/null 2>&1; then
	brew() {
		case "$1" in
		cleanup)
			brew-cleanup
			;;
		bump)
			brew-bump
			;;
		*)
			command brew "$@"
			;;
		esac
	}
fi
