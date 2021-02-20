{
  selfHob = "nixpkgs"; /* Remove if merged into nixpkgs */
  modz = [ "lib" "hyraizyn" ];

  lamdy = uyrld@{ self, lib, hyraizyn }:
    rec {
      datom = meik {
        inherit (uyrld) self lib;
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
