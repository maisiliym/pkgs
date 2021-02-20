{
  description = "pkgs - nixpkgs bridge to uniks/uyrld";
  outputs = { self }: { SobUyrld = import ./SobUyrld.nix; };
}
