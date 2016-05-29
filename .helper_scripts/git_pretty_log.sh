#!/bin/bash

function gitprettylog()
{
	HASH="%C(yellow)%h%C(reset)";
	DATE="%C(green)%ad%C(reset)"
	AUTHOR="%C(blue)%an%C(reset)";
	REFS="%C(red)%d%C(reset)";
	SUBJECT="%s";
	FORMAT="%C(red) $HASH{$DATE{$AUTHOR{$REFS $SUBJECT";
    
	git log --oneline --decorate --graph --pretty="tformat:$FORMAT" $* |
    column -s '{' -t |
    less -FXRS
}

gitprettylog;
