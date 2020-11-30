#!/usr/bin/env bash
export BASH_SILENCE_DEPRECATION_WARNING=1

for file in ~/.{bash_prompt,exports,aliases,private}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add git auto-complete
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
