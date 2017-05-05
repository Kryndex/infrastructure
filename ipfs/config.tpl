{
  "Identity": {
    "PeerID": "$(var ipfs_peerid)",
    "PrivKey": "$(var ipfs_private_key)"
  },
  "Datastore": {
    "GCPeriod": "$(var ipfs_gc_period)",
    "NoSync": true,
    "Path": "/data/ipfs/datastore",
    "StorageGCWatermark": $(var ipfs_gc_watermark),
    "StorageMax": "$(var ipfs_gc_capacity)",
    "Type": "leveldb",
    "BloomFilterSize": $(var ipfs_bloom_size)
  },
  "Experimental": {
    "ShardingEnabled": $(var ipfs_enable_sharding)
  },
  "Addresses": {
    "Swarm": [
      "/ip4/0.0.0.0/tcp/$(var ipfs_swarm_tcp)",
      "/ip6/::/tcp/$(var ipfs_swarm_tcp)",
      "/ip4/127.0.0.1/tcp/$(var ipfs_swarm_ws)/ws"
    ],
    "API": "/ip4/127.0.0.1/tcp/$(var ipfs_api)",
    "Gateway": "/ip4/127.0.0.1/tcp/$(var ipfs_gateway)"
  },
  "Mounts": {
    "IPFS": "/ipfs",
    "IPNS": "/ipns",
    "FuseAllowOther": false
  },
  "Version": {
    "Current": "0.3.5",
    "Check": "error",
    "CheckDate": "0001-01-01T00:00:00Z",
    "CheckPeriod": "172800000000000",
    "AutoUpdate": "minor"
  },
  "Discovery": {
    "MDNS": {
      "Enabled": false,
      "Interval": 10
    }
  },
  "Reprovider": {
    "Interval": "0"
  },
  "Bootstrap": [
    "/ip4/104.131.131.82/tcp/4001/ipfs/QmaCpDMGvV2BGHeYERUEnRQAwe3N8SzbUtfsmvsqQLuvuJ",
    "/ip4/104.236.176.52/tcp/4001/ipfs/QmSoLnSGccFuZQJzRadHn95W2CrSFmZuTdDWP8HXaHca9z",
    "/ip4/104.236.179.241/tcp/4001/ipfs/QmSoLPppuBtQSGwKDZT2M73ULpjvfd3aZ6ha4oFGL1KrGM",
    "/ip4/162.243.248.213/tcp/4001/ipfs/QmSoLueR4xBeUbY9WZ9xGUUxunbKWcrNFTDAadQJmocnWm",
    "/ip4/128.199.219.111/tcp/4001/ipfs/QmSoLSafTMBsPKadTEgaXctDQVcqN88CNLHXMkTNwMKPnu",
    "/ip4/104.236.76.40/tcp/4001/ipfs/QmSoLV4Bbm51jM9C4gDYZQ9Cy3U6aXMJDAbzgu2fzaDs64",
    "/ip4/178.62.158.247/tcp/4001/ipfs/QmSoLer265NRgSp2LA3dPaeykiS1J6DifTC88f5uVQKNAd",
    "/ip4/178.62.61.185/tcp/4001/ipfs/QmSoLMeWqB7YGVLJN3pNLQpmmEk35v6wYtsMGLzSr5QBU3",
    "/ip4/104.236.151.122/tcp/4001/ipfs/QmSoLju6m7xTh3DuokvT3886QRYqxAzb1kShaanJgW36yx"
  ],
  "Tour": {
    "Last": ""
  },
  "Gateway": {
    "PathPrefixes": ["/blog", "/refs"],
    "RootRedirect": "",
    "Writable": false,
    "HTTPHeaders": {
      "Access-Control-Allow-Origin": ["*"],
      "Access-Control-Allow-Methods": ["GET"],
      "Access-Control-Allow-Headers": ["X-Requested-With"]
    }
  },
  "API": {
    "HTTPHeaders": {
      "Access-Control-Allow-Origin": [
        "*"
      ]
    }
  },
  "SupernodeRouting": {
    "Servers": []
  },
  "DialBlocklist": null,
  "Swarm": {
    "DisableNatPortMap": true,
    "AddrFilters": [
$(for h in ${provsn_hosts[@]}; do
  printf '      "/ip6/%s/ipcidr/128",\n' $(host=$h var cjdns_ipv6)
done)
      "/ip4/10.0.0.0/ipcidr/8",
      "/ip4/100.64.0.0/ipcidr/10",
      "/ip4/169.254.0.0/ipcidr/16",
      "/ip4/172.16.0.0/ipcidr/12",
      "/ip4/192.0.0.0/ipcidr/24",
      "/ip4/192.0.0.0/ipcidr/29",
      "/ip4/192.0.0.8/ipcidr/32",
      "/ip4/192.0.0.170/ipcidr/32",
      "/ip4/192.0.0.171/ipcidr/32",
      "/ip4/192.0.2.0/ipcidr/24",
      "/ip4/192.168.0.0/ipcidr/16",
      "/ip4/198.18.0.0/ipcidr/15",
      "/ip4/198.51.100.0/ipcidr/24",
      "/ip4/203.0.113.0/ipcidr/24",
      "/ip4/240.0.0.0/ipcidr/4"
    ]
  }
}
