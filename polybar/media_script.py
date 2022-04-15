#!/usr/bin/python3
from pydbus import SessionBus
from gi.repository import GLib
import sys
import os
import argparse
import re

ICON_PLAY = "\uf144"
ICON_PAUSE = "\uf28b"
ICON = ""
PATH=os.path.realpath(__file__)
TITLE_LENGTH = 15
MEDIA_ICONS = "\uf16a "

parser = argparse.ArgumentParser()
parser.add_argument('--playpause', action="store_true")
parser.add_argument('--next', action="store_true")
parser.add_argument('--prev', action="store_true")
args= parser.parse_args()

bus = SessionBus()
try:
    Player = bus.get(
        "org.kde.plasma.browser_integration",
        "/org/mpris/MediaPlayer2"
    )
except GLib.Error:
    exit()

def truncate(text, max_len):
    return text[:max_len] + "..." if len(text) > max_len and max_len > 0 else text

if Player.PlaybackStatus != "Stopped":
    if args.playpause:
        Player.PlayPause()
        exit()
    if Player.PlaybackStatus=="Playing":
        ICON = ICON_PAUSE
    elif Player.PlaybackStatus=="Paused":
        ICON = ICON_PLAY
    if args.next:
        Player.Next()
    elif args.prev:
        Player.Previous()
    
    title = Player.Metadata["xesam:title"]
    output =   ICON + " | " + MEDIA_ICONS  + truncate(title, TITLE_LENGTH)
    print(output)
else:
    print("")
