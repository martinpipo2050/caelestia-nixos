{ config, lib, ... }:

{
  home.activation.caelestiaInit =
    lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      HYPR="${config.xdg.configHome}/hypr"
      CAEL="${config.xdg.configHome}/caelestia"

      # Deploy a mutable Hypr configuration on first activation.
      # Caelestia writes runtime files into ~/.config/hypr/scheme,
      # so this directory must not be managed as a Home Manager symlink.
      if [ ! -d "$HYPR" ]; then
        cp -a ${./hypr} "$HYPR"
        chmod -R u+w "$HYPR"

        if [ -f "$HYPR/scheme/default.lua" ] && [ ! -f "$HYPR/scheme/current.lua" ]; then
          cp "$HYPR/scheme/default.lua" "$HYPR/scheme/current.lua"
        fi
      fi

      mkdir -p "$CAEL"

      if [ ! -f "$CAEL/hypr-user.lua" ]; then
        touch "$CAEL/hypr-user.lua"
      fi

      if [ ! -f "$CAEL/hypr-vars.lua" ]; then
        cat > "$CAEL/hypr-vars.lua" <<'EOF'
return {}
EOF
      fi

      if [ ! -f "$CAEL/user-config.fish" ]; then
        touch "$CAEL/user-config.fish"
      fi
    '';
}
