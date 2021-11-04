#!/bin/sh

function run {
    if ! pgrep $1 ;
    then
	$@&
    fi
}

run slstatus &
run "picom"
run "nitrogen --restore"

