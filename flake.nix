{
  description = "icons.xplr";
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.stdenv.mkDerivation {
      name = "icons.xplr";
      src = ./.;
      installPhase = ''
        mkdir -p $out
        cp -r . $out/
      '';
    };
  };
}
