@echo off
REM This script simply uses livestreamer <> to stream a twitch stream. It only
REM a little shortcut, so I don't have to type so much.
REM
REM Usage: twitch USERNAME [RESOLUTION]


REM Check the optional resolution parameter, if it's not set we use source
if %2.==. (
	set resolution=source
) else (
	set resolution=%2
)

livestreamer "twitch.tv/%1" %resolution%