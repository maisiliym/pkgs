hob: {
  self = hob.nixpkgs.mein;
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
        , lib ? lib
        , overlays ? [ ]
        , config ? { allowUnfree = true; }
        , localSystem
        , crossSystem ? localSystem
        }:

        (import ./meik.nix) meikArgz;
    };
}
