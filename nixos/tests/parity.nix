import ./make-test-python.nix ({ pkgs, ...} : {
  name = "parity";
  meta = with pkgs.stdenv.lib.maintainers; {
    maintainers = [ strdn akru spd ];
  };

  nodes = {
    parity_service = { lib, ... }: {
      services.parity = {
        enable = true;
        extraConfig = ''
          # API Options:
          [rpc]
          apis = ["personal"]
        '';
      };
    };
  };

  testScript = ''
    parity_service.wait_for_unit("parity")
    parity_service.wait_for_open_port("8545")
    parity_service.succeed(
        '${pkgs.curl}/bin/curl --data \'{"method":"personal_newAccount","params":["hunter2"],"id":1,"jsonrpc":"2.0"}\' -H "Content-Type: application/json" -X POST localhost:8545'
    )
    parity_service.succeed(
        "ls /var/lib/parity/.local/share/io.parity.ethereum/keys/ethereum/UTC--*"
    )
  '';
})
