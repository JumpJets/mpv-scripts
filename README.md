# mpv-scripts
Collection of my mpv scripts. *If you have suggestions to my scripts, create issue.*

To install scripts, just place them in mpv scripts folder.

## toggle_loop.lua
With this script you can in any time during playing toggle between `loop-file=inf` and `loop-file=no`.

You need add hotkey (default is not set) into  your `input.conf`, like that:
```
ctrl+t script-message-to toggle_loop toggle_loop
```
