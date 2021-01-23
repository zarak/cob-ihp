let
    ihp = builtins.fetchGit {
        url = "https://github.com/digitallyinduced/ihp.git";
        ref = "refs/tags/v0.8.0";
    };
    haskellEnv = import "${ihp}/NixSupport/default.nix" {
        ihp = ./IHP;
        haskellDeps = p: with p; [
            cabal-install
            base
            wai
            text
            hlint
            p.ihp
            mmark
            countable-inflections
            #bytestring
            #time
            #fmt
            #Chart
            #Chart-diagrams
            cassava
            hspec
            hedgehog
            #optparse-applicative
            #profunctors
        ];
        otherDeps = p: with p; [
            # Native dependencies, e.g. imagemagick
            nodejs
            entr
        ];
        projectPath = ./.;
    };
in
    haskellEnv
