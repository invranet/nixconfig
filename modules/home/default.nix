{
  nixpkgs,
  nixpkgs-24_11,
  unstable,
  custils,
  ...
}:
let
  lib = nixpkgs.lib;
  stdenv = unstable.stdenv;
  nixpkgs-24_11 = nixpkgs-24_11;
in
{
  imports = custils.getModulesFromDirsRec (
    lib.lists.toList (lib.path.append ./. "󱄅")
    ++ (lib.optional stdenv.isLinux (lib.path.append ./. ""))
    ++ (lib.optional stdenv.isDarwin (lib.path.append ./. ""))
  );
}
