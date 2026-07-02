{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    # Herramientas del sistema oficiales disponibles en nixpkgs
    pkgs.aircrack-ng
    pkgs.lolcat
    pkgs.boxes

    # Entorno de Python con sus librerías correspondientes
    (pkgs.python3.withPackages (ps: with ps; [
      requests
      pyyaml
      rich
      flask
      scapy       # Scapy es excelente en NixOS para inyección y análisis de paquetes
      qrcode
      pillow      # Requerido por qrcode[pil]
    ]))
  ];

  shellHook = ''
    echo "⚡ Entorno de desarrollo activo con herramientas de red y Python ⚡"
    echo "Nota: reaver y wash no están en nixpkgs oficial. Usa Scapy o herramientas nativas."
  '';
}

