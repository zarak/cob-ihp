let
    ihp = builtins.fetchGit {
        url = "https://github.com/digitallyinduced/ihp.git";
        rev = "0538eb8a890a9250ca2a3601c81ab336f4fbca25";
    };
    haskellEnv = import "${ihp}/NixSupport/default.nix" {
        ihp = ihp;
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
            #cassava
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
