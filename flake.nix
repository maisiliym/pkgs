{
  description = "pkgs";

  outputs = registry@{ self }:
    let
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

    in
    {
      SobUyrld = {
        modz = [ "lib" "hyraizyn" ];
        inherit lamdy;
        selfHob = "nixpkgs"; /* Remove if merged into nixpkgs */
      };

    };
}
