let
  sourcesTarball = fetchTarball "https://github.com/mutwo-org/mutwo-nix/archive/refs/heads/main.tar.gz";
  mutwo-acoustic = import (sourcesTarball + "/mutwo.acoustic/default.nix") {};
  mutwo-acoustic-local = mutwo-acoustic.overrideAttrs (
    finalAttrs: previousAttrs: {
       src = ./.;
    }
  );
in
  mutwo-acoustic-local

