#!/bin/bash

# Installs Unity
apt-get -y install --no-install-recommends ubuntu-desktop

# Configures LightDM to skip login screen for vagrant user
cat <<EOF > /etc/lightdm/lightdm.conf
[SeatDefaults]
autologin-user=vagrant
autologin-user-timeout=0
user-session=ubuntu
greeter-session=unity-greeter
EOF
