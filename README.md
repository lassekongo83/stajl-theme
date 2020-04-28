# stajl-theme
A theme for GNOME based on Adwaita.

(No screenshot yet as the theme is still in development.)

Required packages before installing: `ninja-build git meson sassc` (`ninja-build` is just called `ninja` on some distros.)

Download the theme: `git clone https://github.com/lassekongo83/stajl-theme.git`

Then run:

```
cd stajl-theme
meson build
sudo ninja -C build install
```

And that's it. The theme will be installed in `/usr/share/themes/` and can be activated with `gnome-tweaks` or `dconf`.

If you want to update the theme, then run these commands in the cloned theme folder:

```
git pull
sudo ninja -C build install
```

To uninstall the theme, run: `rm -r /usr/share/themes/Stajl`
