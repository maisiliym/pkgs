{
  description = "pkgs - nixpkgs bridge to uniks/uyrld";
  outputs = { self }: { HobUyrld = import ./SobUyrld.nix; };
}
