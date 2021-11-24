{ pkgs ? import <nixpkgs> {} }:

pkgs.buildGoModule rec {
  pname = "stc";
  version = "0.1.6";

  src = pkgs.fetchFromGitHub {
    owner = "xdrpp";
    repo = "stc";
    rev = "v${version}";
    sha256 = "10k4hl2lg2qcbzayn0ddv34zynjz14h9hz4i5z2h3zqcpjgjmqa0";
  };

  runVend = true;
  vendorSha256 = "1j76a19wv8iqv4b9zg03j3jakjjql5r2hfqsf97k5jsyk8pmxpp7";
  subPackages = [ "cmd/stc" ];

}
