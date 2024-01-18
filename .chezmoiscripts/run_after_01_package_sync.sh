#!/usr/bin/env fish
# vi: ft=fish

set HOSTNAME (cat /etc/hostname)

echo "Found hostname $HOSTNAME"

if test "$HOSTNAME" = "asuna";
  if command -sq pacdef;
    pacdef group import "$HOME/.config/pacdefconfig/base"
    pacdef group import "$HOME/.config/pacdefconfig/cli"
    pacdef group import "$HOME/.config/pacdefconfig/desktop"
    pacdef group import "$HOME/.config/pacdefconfig/rustdev"
    pacdef p sy --noconfirm
  end
end
