# This file is a modified version based on default i3-config-wizard config
# source is available here:
# https://raw.githubusercontent.com/endeavouros-team/endeavouros-i3wm-setup/master/.config/i3/config
# Maintainer: joekamprad [joekamprad //a_t// endeavouros.com]
# https://endeavouros.com
#
# iconic font icon search: https://fontawesome.com/v4.7/cheatsheet/
#
# --> to update this run the following command (will backup existing setup file)
# wget --backups=1 https://raw.githubusercontent.com/endeavouros-team/endeavouros-i3wm-setup/main/.config/i3/config -P ~/.config/i3/
#
# Endeavouros-i3 config file
# Source for complete framework of our i3 config and theming here: https://github.com/endeavouros-team/endeavouros-i3wm-setup
# EndeavourOS wiki holds some Information also: https://discovery.endeavouros.com/window-tiling-managers/i3-wm/
# Please see http://i3wm.org/docs/userguide.html for the official i3 reference!

#######################
# config starts here: #
#######################

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango: Noto Sans Regular 13

# set the mod key to the winkey:
set $mod Mod4

#####################
# workspace layout: #
#####################

# default i3 tiling mode:
workspace_layout default

# i3 stacking layout:
# Each window will be fullscreen and tabbed top to bottom.
# workspace_layout stacking

# i3 tabbed layout:
# Each new window will open fullscreen as a tab (left to right)
# workspace_layout tabbed

##############################
# extra options for windows: #
##############################

#border indicator on windows:

for_window [class="^.*"] border pixel 0
#border_radius 5

# thin borders
#hide_edge_borders both

# Set inner/outer gaps
gaps inner 8
gaps outer 8

# gaps
set $mode_gaps Gaps: (o)uter, (i)nner, (h)orizontal, (v)ertical, (t)op, (r)ight, (b)ottom, (l)eft
set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_horiz Horizontal Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_verti Vertical Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_top Top Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_right Right Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_bottom Bottom Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_left Left Gaps: +|-|0 (local), Shift + +|-|0 (global)
bindsym $mod+Shift+g mode "$mode_gaps"

mode "$mode_gaps" {
        bindsym o      mode "$mode_gaps_outer"
        bindsym i      mode "$mode_gaps_inner"
        bindsym h      mode "$mode_gaps_horiz"
        bindsym v      mode "$mode_gaps_verti"
        bindsym t      mode "$mode_gaps_top"
        bindsym r      mode "$mode_gaps_right"
        bindsym b      mode "$mode_gaps_bottom"
        bindsym l      mode "$mode_gaps_left"
        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}

mode "$mode_gaps_outer" {
        bindsym plus  gaps outer current plus 5
        bindsym minus gaps outer current minus 5
        bindsym 0     gaps outer current set 0

        bindsym Shift+plus  gaps outer all plus 5
        bindsym Shift+minus gaps outer all minus 5
        bindsym Shift+0     gaps outer all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}
mode "$mode_gaps_inner" {
        bindsym plus  gaps inner current plus 5
        bindsym minus gaps inner current minus 5
        bindsym 0     gaps inner current set 0

        bindsym Shift+plus  gaps inner all plus 5
        bindsym Shift+minus gaps inner all minus 5
        bindsym Shift+0     gaps inner all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}
mode "$mode_gaps_horiz" {
        bindsym plus  gaps horizontal current plus 5
        bindsym minus gaps horizontal current minus 5
        bindsym 0     gaps horizontal current set 0

        bindsym Shift+plus  gaps horizontal all plus 5
        bindsym Shift+minus gaps horizontal all minus 5
        bindsym Shift+0     gaps horizontal all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}
mode "$mode_gaps_verti" {
        bindsym plus  gaps vertical current plus 5
        bindsym minus gaps vertical current minus 5
        bindsym 0     gaps vertical current set 0

        bindsym Shift+plus  gaps vertical all plus 5
        bindsym Shift+minus gaps vertical all minus 5
        bindsym Shift+0     gaps vertical all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}
mode "$mode_gaps_top" {
        bindsym plus  gaps top current plus 5
        bindsym minus gaps top current minus 5
        bindsym 0     gaps top current set 0

        bindsym Shift+plus  gaps top all plus 5
        bindsym Shift+minus gaps top all minus 5
        bindsym Shift+0     gaps top all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}
mode "$mode_gaps_right" {
        bindsym plus  gaps right current plus 5
        bindsym minus gaps right current minus 5
        bindsym 0     gaps right current set 0

        bindsym Shift+plus  gaps right all plus 5
        bindsym Shift+minus gaps right all minus 5
        bindsym Shift+0     gaps right all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}
mode "$mode_gaps_bottom" {
        bindsym plus  gaps bottom current plus 5
        bindsym minus gaps bottom current minus 5
        bindsym 0     gaps bottom current set 0

        bindsym Shift+plus  gaps bottom all plus 5
        bindsym Shift+minus gaps bottom all minus 5
        bindsym Shift+0     gaps bottom all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}
mode "$mode_gaps_left" {
        bindsym plus  gaps left current plus 5
        bindsym minus gaps left current minus 5
        bindsym 0     gaps left current set 0

        bindsym Shift+plus  gaps left all plus 5
        bindsym Shift+minus gaps left all minus 5
        bindsym Shift+0     gaps left all set 0

        bindsym Return mode "$mode_gaps"
        bindsym Escape mode "default"
}

# show window title bars (not officially supported with i3gaps)
#default_border pixel 4

# window title alignment
title_align center

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# switch/iterate between workspaces
bindsym $mod+Tab workspace next
bindsym $mod+Shift+Tab workspace prev

# switch to workspace
bindsym $mod+1    workspace  $ws1
bindsym $mod+2    workspace  $ws2
bindsym $mod+3    workspace  $ws3
bindsym $mod+4    workspace  $ws4
bindsym $mod+5    workspace  $ws5
bindsym $mod+6    workspace  $ws6
bindsym $mod+7    workspace  $ws7
bindsym $mod+8    workspace  $ws8
bindsym $mod+9    workspace  $ws9
bindsym $mod+0    workspace  $ws10

# switch to workspace with numpad keys
bindcode $mod+87 workspace $ws1
bindcode $mod+88 workspace $ws2
bindcode $mod+89 workspace $ws3
bindcode $mod+83 workspace $ws4
bindcode $mod+84 workspace $ws5
bindcode $mod+85 workspace $ws6
bindcode $mod+79 workspace $ws7
bindcode $mod+80 workspace $ws8
bindcode $mod+81 workspace $ws9
bindcode $mod+90 workspace $ws10

# switch to workspace with numlock numpad keys
bindcode $mod+Mod2+87 workspace $ws1
bindcode $mod+Mod2+88 workspace $ws2
bindcode $mod+Mod2+89 workspace $ws3
bindcode $mod+Mod2+83 workspace $ws4
bindcode $mod+Mod2+84 workspace $ws5
bindcode $mod+Mod2+85 workspace $ws6
bindcode $mod+Mod2+79 workspace $ws7
bindcode $mod+Mod2+80 workspace $ws8
bindcode $mod+Mod2+81 workspace $ws9
bindcode $mod+Mod2+90 workspace $ws10

# move focused container to workspace
bindsym $mod+Shift+1    move container to workspace  $ws1
bindsym $mod+Shift+2    move container to workspace  $ws2
bindsym $mod+Shift+3    move container to workspace  $ws3
bindsym $mod+Shift+4    move container to workspace  $ws4
bindsym $mod+Shift+5    move container to workspace  $ws5
bindsym $mod+Shift+6    move container to workspace  $ws6
bindsym $mod+Shift+7    move container to workspace  $ws7
bindsym $mod+Shift+8    move container to workspace  $ws8
bindsym $mod+Shift+9    move container to workspace  $ws9
bindsym $mod+Shift+0    move container to workspace  $ws10

# move focused container to workspace with numpad keys
bindcode $mod+Shift+Mod2+87 	move container to workspace  $ws1
bindcode $mod+Shift+Mod2+88 	move container to workspace  $ws2
bindcode $mod+Shift+Mod2+89 	move container to workspace  $ws3
bindcode $mod+Shift+Mod2+83 	move container to workspace  $ws4
bindcode $mod+Shift+Mod2+84 	move container to workspace  $ws5
bindcode $mod+Shift+Mod2+85 	move container to workspace  $ws6
bindcode $mod+Shift+Mod2+79 	move container to workspace  $ws7
bindcode $mod+Shift+Mod2+80 	move container to workspace  $ws8
bindcode $mod+Shift+Mod2+81 	move container to workspace  $ws9
bindcode $mod+Shift+Mod2+90 	move container to workspace  $ws10

# resize window (you can also use the mouse for that):
mode "resize" {
# These bindings trigger as soon as you enter the resize mode
# Pressing left will shrink the window's width.
# Pressing right will grow the window's width.
# Pressing up will shrink the window's height.
# Pressing down will grow the window's height.
#        bindsym j resize shrink width 10 px or 10 ppt
#        bindsym k resize grow height 10 px or 10 ppt
#        bindsym l resize shrink height 10 px or 10 ppt
#        bindsym ; resize grow width 10 px or 10 ppt

# same bindings, but for the arrow keys
	bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

# back to normal: Enter or Escape
#	bindsym Return mode "default"
        bindsym Escape mode "default"
}

#bindsym $mod+r mode "resize"

######################################
# keybindings for different actions: #
######################################

# start a terminal
bindsym $mod+Return exec --no-startup-id alacritty

# kill focused window
bindsym $mod+q kill

# exit-menu
bindsym $mod+Shift+e exec --no-startup-id ~/.local/bin/rofi-power-menu.sh

# Lock the system
# lock with a picture:
#bindsym $mod+l exec --no-startup-id i3lock -i  ~/.config/i3/i3-lock-screen.png -p default|win -t
# lock by blurring the screen:
#bindsym $mod+l exec --no-startup-id ~/.config/i3/scripts/blur-lock

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to update i3)
bindsym $mod+Shift+r restart

# keybinding in fancy rofi (automated):
bindsym F1 exec --no-startup-id ~/.config/i3/scripts/fancy.rasi
# alternative
# keybinding list in editor:
# bindsym $mod+F1 exec --no-startup-id xed ~/.config/i3/keybindings

# Backlight control
bindsym XF86MonBrightnessUp exec --no-startup-id xbacklight +10
bindsym XF86MonBrightnessDown exec --no-startup-id xbacklight -10

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+b focus up
bindsym $mod+o focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+b move up
bindsym $mod+Shift+o move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+g layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# open new empty workspace
bindsym $mod+Shift+n exec --no-startup-id ~/.config/i3/scripts/empty_workspace

# Multimedia Keys

# volume
# use meta keys without showing osc
#bindsym XF86AudioRaiseVolume exec --no-startup-id amixer -D pulse sset Master 5%+ && pkill -RTMIN+1 i3blocks
#bindsym XF86AudioLowerVolume exec --no-startup-id amixer -D pulse sset Master 5%- && pkill -RTMIN+1 i3blocks
# use meta keys showing osc using dunst
bindsym XF86AudioRaiseVolume exec --no-startup-id ~/.config/i3/scripts/volume_brightness.sh volume_up
bindsym XF86AudioLowerVolume exec --no-startup-id ~/.config/i3/scripts/volume_brightness.sh volume_down

# gradular volume control
bindsym $mod+XF86AudioRaiseVolume exec --no-startup-id amixer -D pulse sset Master 1%+ && pkill -RTMIN+1 i3blocks
bindsym $mod+XF86AudioLowerVolume exec --no-startup-id amixer -D pulse sset Master 1%- && pkill -RTMIN+1 i3blocks

# mute
#bindsym XF86AudioMute exec --no-startup-id amixer sset Master toggle && killall -USR1 i3blocks
# use meta keys showing osc using dunst
bindsym XF86AudioMute exec --no-startup-id ~/.config/i3/scripts/volume_brightness.sh volume_mute

# mic mute toggle
bindsym XF86AudioMicMute exec amixer sset Capture toggle

# audio control
bindsym XF86AudioPlay exec --no-startup-id playerctl play
bindsym XF86AudioPause exec --no-startup-id playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

# Redirect sound to headphones
bindsym $mod+p exec --no-startup-id /usr/local/bin/switch-audio-port

## App shortcuts
bindsym $mod+w exec --no-startup-id /opt/floorp/floorp
bindsym $mod+n exec --no-startup-id nemo
bindsym Print exec --no-startup-id scrot ~/%Y-%m-%d-%T-screenshot.png && notify-send "Screenshot saved to ~/$(date +"%Y-%m-%d-%T")-screenshot.png"


bindsym $mod+Shift+x exec betterlockscreen -l dim

##########################################
# configuration for workspace behaviour: #
##########################################

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1:"
set $ws2 "2: Terminal"
set $ws3 "3: Floorp"
set $ws4 "4: File Explorer"
set $ws5 "5: Mail"
set $ws7 "7: Reading"
set $ws8 "8: Watching"
set $ws9 "9:  Games"
set $ws10 "10: Virtual Machine"

# use workspaces on different displays:
# where you have to replace VGA-0/HDMI-0 with the names for your displays
# you can get from xrandr command
#workspace $ws1 output VGA-0
#workspace $ws2 output VGA-0
#workspace $ws3 output HDMI-0
#workspace $ws4 output HDMI-0
#workspace $ws5 output HDMI-0

# bind program to workspace and focus to them on startup:
assign [class="Alacritty"] $ws2
assign [class="floorp"] $ws3
assign [class="Nemo"] $ws4
assign [class="thunderbird"] $ws5
assign [class="YACReader"] $ws7
assign [class="Foliate"] $ws7
assign [class="vlc"] $ws8
assign [class="lutris"] $ws9
assign [class="virt-manager"] $ws10

# automatic set focus new window if it opens on another workspace than the current:
for_window [class=Alacritty] focus
for_window [class=floorp] focus
for_window [class=TelegramDesktop] focus
for_window [class=Rofi] focus
for_window [class=YACReader] focus
for_window [class=Foliate] focus
for_window [class=Lutris] focus

##############
# compositor #
##############

# transparency
# uncomment one of them to be used
# options could need changes, related to used GPU and drivers.
# to find the right setting consult the archwiki or ask at the forum.
#
# xcompmgr: https://wiki.archlinux.org/title/Xcompmgr
# manpage: https://man.archlinux.org/man/xcompmgr.1.en
# install xcompmgr package to use it (yay -S xcompmgr)
#exec --no-startup-id xcompmgr -C -n &
# or an more specialized config like this:
#exec --no-startup-id xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
#
# or:
#
# picom: https://wiki.archlinux.org/title/Picom
# manpage: https://man.archlinux.org/man/picom.1.en
# The default configuration is available in /etc/xdg/picom.conf
# For modifications, it can be copied to ~/.config/picom/picom.conf or ~/.config/picom.conf
# install picom package (yay -S picom)
# start using default config
#exec_always --no-startup-id picom -b
#
# for custom config:
exec_always --no-startup-id picom --config  ~/.config/picom.conf

#############################################
# autostart applications/services on login: #
#############################################

#get auth work with polkit-gnome
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# dex execute .desktop files + apps using /etc/xdg/autostart.
# when second to i3 a DE is installed or mixed usage of i3 + xfce4 or GNOME
# in this cases better disable dex and use manual starting apps using xdg/autostart
# if enabled you should comment welcome app.
# https://github.com/jceb/dex
#exec --no-startup-id dex -a -s /etc/xdg/autostart/:~/.config/autostart/
exec --no-startup-id dex --autostart --environment i3
exec_always --no-startup-id sleep 1 && feh --randomize --bg-fill /home/melinoe/Pictures/WP/*

# start welcome app
#exec --no-startup-id sh /usr/share/endeavouros/scripts/welcome --startdelay=3

exec --no-startup-id xidlehook --not-when-audio --not-when-fullscreen --timer 600 'systemctl suspend-then-hibernate' ''

# num lock activated
#exec --no-startup-id numlockx on

# configure multiple keyboard layouts and hotkey to switch (Alt+CAPSLOCK in this example)
#exec --no-startup-id setxkbmap -layout 'us,sk' -variant altgr-intl,qwerty -option 'grp:alt_caps_toggle'

# start conky:
#exec_always --no-startup-id conky

# start a script to setup displays
# uncomment the next line, use arandr to setup displays and save the file as monitor:
exec --no-startup-id ~/.screenlayout/monitor.sh

# set wallpaper
# exec --no-startup-id sleep 2 && nitrogen --restore

# set powersavings for display:
exec --no-startup-id xset s 480 dpms 600 600 600

# disable power saving (for example if using xscreensaver)
#exec --no-startup-id xset -dpms

# use xautolock to use autosuspend rules for mobile devices
# https://wiki.archlinux.org/title/Session_lock#xautolock
#exec --no-startup-id xautolock -time 60 -locker "systemctl suspend"


# xscreensaver
# https://www.jwz.org/xscreensaver
#exec --no-startup-id xscreensaver --no-splash

# Desktop notifications
# dunst config used ~/.config/dunst/dunstrc
# set alternative config if needed:
#exec --no-startup-id /usr/bin/dunst --config ~/.config/dunst/dunstrc
# may need to run dbus-launch explicitly:
#exec --no-startup-id dbus-launch /usr/bin/dunst
exec --no-startup-id /usr/bin/dunst
# alternative if you installed aside with XFCE4:
# exec --no-startup-id /usr/lib/xfce4/notifyd/xfce4-notifyd &

# autotiling script
# https://github.com/nwg-piotr/autotiling
# `yay -S autotiling ;) (it is in AUR)
#exec_always --no-startup-id autotiling

# Autostart apps as you like
exec --no-startup-id sleep 5 && alacritty
exec --no-startup-id sleep 7 && /opt/floorp/floorp

# set desktop background with custom effect
exec --no-startup-id betterlockscreen -w dim

# Alternative (set last used background)
exec --no-startup-id source ~/.fehbg

###############
# system tray #
###############
# if you do not use dex: exec --no-startup-id dex --autostart --environment i3
# you need to have tray apps started manually one by one:

# start blueberry app for managing bluetooth devices from tray:
#exec --no-startup-id bluebery-tray

# networkmanager-applet
#exec --no-startup-id nm-applet

# clipman-applet
#exec --no-startup-id xfce4-clipman

##################
# floating rules #
##################

# set floating (nontiling) for apps needing it
for_window [class="Yad" instance="yad"] floating enable
for_window [class="mpv"] floating enable
for_window [class="Galculator" instance="galculator"] floating enable
for_window [class="Blueberry.py" instance="blueberry.py"] floating enable

# set floating (nontiling) for special apps
for_window [class="Xsane" instance="xsane"] floating enable
for_window [class="Pavucontrol" instance="pavucontrol"] floating enable
for_window [class="qt5ct" instance="qt5ct"] floating enable
for_window [class="Blueberry.py" instance="blueberry.py"] floating enable
for_window [class="Bluetooth-sendto" instance="bluetooth-sendto"] floating enable
for_window [class="Pamac-manager"] floating enable
for_window [window_role="About"] floating enable

# set border of floating window
for_window [class="urxvt"] border pixel 2

# set size of floating window
#for_window [window_role="(?i)GtkFileChooserDialog"] resize set 640 480 #to set size of file choose dialog
#for_window [class=".*"] resize set 640 480 #to change size of all floating windows

# set position of floating window
#for_window [class=".*"] move position center

######################################
# color settings for bar and windows #
######################################

# Define colors variables:
set $bgcolor    	#6a82fb
set $in-bgcolor 	#3c1053
set $text       	#ffffff
set $u-bgcolor  	#363636
set $indicator  	#e9e4f0
set $in-text    	#969696
set $focused-ws 	#141e30
set $bar-color 		#0f2027
set $urgentred		#cb2d3e

# define colors for windows:
#class		        	border		bground		text		indicator	child_border
client.focused		    	$bgcolor	$bgcolor	$text		$indicator	$indicator
client.unfocused	    	$in-bgcolor	$in-bgcolor	$in-text	$bgcolor	$bgcolor
client.focused_inactive		$in-bgcolor	$in-bgcolor	$in-text	$bgcolor	$bgcolor
client.urgent		    	$u-bgcolor	$urgenred	$text		$urgentred	$urgentred

############################################
# bar settings (input comes from i3blocks) #
############################################

# Start i3bar to display a workspace bar
# (plus the system information i3status finds out, if available)
bar {
		font pango:Old_Englished_Boots 20
		status_command i3blocks -c ~/.config/i3blocks/i3blocks.conf
	    	position top
	    	i3bar_command i3bar --transparency
		tray_output none
# it could be that you have no primary display set: set one (xrandr --output <output> --primary)
# reference: https://i3wm.org/docs/userguide.html#_tray_output
		    #tray_output primary
		    tray_padding 0

# When strip_workspace_numbers is set to yes,
# any workspace that has a name of the form
# “[n][:][NAME]” will display only the name.
strip_workspace_numbers yes
##strip_workspace_name no

		    colors {
		    separator          $indicator
		    background         $bar-color
		    statusline         $text

                #                       border          background      text
                focused_workspace       $bgcolor        $bgcolor        $text
                inactive_workspace      $bar-color     	$bar-color     $text
                urgent_workspace        $urgentred      $urgentred      $text
	}
}

# you can add different bars for multidisplay setups on each display:
# set output HDMI-0 to the display you want the bar, --transparency can be set.
# Transparency needs rgba color codes to be used where the last two letters are the transparency factor see here:
# https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4
# #08052be6 --> e6=90%

# bar {
#	font pango: Noto Sans Regular 10
#	status_command i3blocks -c ~/.config/i3/i3blocks-2.conf
#	i3bar_command i3bar --transparency
#	output HDMI-0
#	position bottom
#
# When strip_workspace_numbers is set to yes,
# any workspace that has a name of the form
# “[n][:][NAME]” will display only the name.
#strip_workspace_numbers yes
##strip_workspace_name no
#
#	colors {
#		separator          $purple
#		background         $darkbluetrans
#        	statusline         $white
#					border		bg		txt		indicator
#		focused_workspace	$lighterblue	$lighterblue	$darkblue	$purple
#		active_workspace	$lightdblue	$lightdblue	$darkblue	$purple
#		inactive_workspace	$darkblue	$darkblue	$lightdblue	$purple
#		urgent_workspace	$urgentred	$urgentred	$white		$purple
#	}
#}

#####################################
# Application menu handled by rofi: #
#####################################

## rofi bindings fancy application menu ($mod+d /F9 optional disabled)

bindsym $mod+d exec --no-startup-id ~/.config/rofi/launchers/type-7/launcher.sh
# bindsym $mod+x exec --no-startup-id powermenu_t2

#bindsym F9 exec --no-startup-id rofi -modi drun -show drun \
#		-config ~/.config/rofi/rofidmenu.rasi

## rofi bindings for window menu ($mod+t /F10 optional disabled)

bindsym $mod+t exec --no-startup-id rofi -show window

## rofi bindings for wifi menu ($mod+t /F10 optional disabled)

bindsym $mod+Shift+w exec --no-startup-id bash ~/.local/bin/rofi-wifi-menu.sh

#bindsym F10 exec --no-startup-id rofi -show window \
#		-config ~/.config/rofi/rofidmenu.rasi

## rofi bindings to manage clipboard (install rofi-greenclip from the AUR)

#exec --no-startup-id greenclip daemon>/dev/null
#bindsym $mod+c exec --no-startup-id rofi -modi "clipboard:greenclip print" -show clipboard \
#		-config ~/.config/rofi/rofidmenu.rasi

# Allocate applications to workspaces
for_window [class="rofi"] move to workspace $ws1
for_window [class="Alacritty"] move to workspace $ws2
for_window [class="floorp"] move to workspace $ws3
for_window [class="Pcmanfm"] move to workspace $ws4
for_window [class="notion"] move to workspace $ws6
for_window [class="YACReader"] move to workspace $ws7
for_window [class="foliate"] move to workspace $ws7
for_window [class="vlc"] move to workspace $ws8
for_window [class="Lutris"] move to workspace $ws9
