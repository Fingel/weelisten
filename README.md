# weelisten
Display native GNOME notifications for a remote Weechat session via relay.

![weelisten](https://m51.io/misc/weelisten.png)

Weelisten uses Weechat's [relay plugin](https://weechat.org/files/doc/stable/weechat_user.en.html#relay_plugin)
in combination with python3 asyncio and libnotify to display GNOME notification on your desktop
for running Weechat sessions. This is particularly helpful if you run Weehcat in a remote
screen or tmux session and would like notifications on your desktop.

## Installation
Weelisten requires python-notify2. This package is named `python-notify2` in debian/ubuntu
and the Arch Linux AUR. Alternatively you can install it using pip: `pip install -r requirements.txt`

## Usage
First make sure your weechat relay is up and available. Then clone the repo and launch the client:

`client.py <host> <password>`

You may also specify a custom port (default is 9001) with the `-p` paramter, or
disable ssl using `-s`. Use `--help` to see all options.

## Starting and stopping
The provided `wchat.sh` script demonstrates a way to start the listener, attach
to a remote Weechat, then kill the listener once the session is killed.

## Thank you
Thanks to [k0rmarun](https://github.com/k0rmarun/pyweechat) I was able to shamelessy
rip off the weechat relay protocol code, as it was a huge pain to parse.
