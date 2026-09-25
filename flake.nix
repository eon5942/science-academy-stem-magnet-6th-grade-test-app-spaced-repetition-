{
  description = "Science Academy STEM Magnet 6th-grade study app — reproducible dev environment (LÖVE + Unity Hub)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true; # Unity Hub is proprietary (unfree)
      };
    in
    {
      packages.${system} = {
        love = pkgs.love;
        unityhub = pkgs.unityhub;
        default = pkgs.love;
      };

      devShells.${system}.default = pkgs.mkShell {
        name = "svea-study-env";

        buildInputs = [
          pkgs.love       # LÖVE 2D game engine
          pkgs.unityhub   # Unity Hub (launcher for the Unity Editor)
          pkgs.git
        ];

        shellHook = ''
          echo "Study app env ready:"
          echo "  love      $(love --version 2>/dev/null || echo 'installed')"
          echo "  unityhub  $(unityhub --version 2>/dev/null || echo 'installed')"
          echo "Run 'nix run .#open' or open index.html in a browser to study."
        '';
      };

      # Convenience: launch the study app in a browser
      apps.${system}.open = {
        type = "app";
        program = toString (pkgs.writeShellScript "open-study-app" ''
          ${pkgs.xdg-utils}/bin/xdg-open index.html || echo "Open index.html in your browser."
        '');
      };
    };
}
