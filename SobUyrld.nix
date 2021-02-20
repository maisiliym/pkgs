{
  selfHob = "nixpkgs"; /* Remove if merged into nixpkgs */
  modz = [ "hyraizyn" ];

  lamdy = uyrld@{ self, hyraizyn }:
    rec {
      lib = import (self + /lib);

      datom = meik {
        inherit self lib;
        localSystem = { system = hyraizyn.astra.sistym; };
      };

      meik =
        meikArgz@
        { self
        , lib ? uyrld.lib
        , overlays ? [ ]
        , config ? { allowUnfree = true; }
        , localSystem
        , crossSystem ? localSystem
        }:

        (import ./meik.nix) meikArgz;
    };
}
