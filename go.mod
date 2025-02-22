module github.com/crypto-com/chain-main

go 1.15

require (
	github.com/confluentinc/bincover v0.1.0
	github.com/cosmos/cosmos-sdk v0.40.0-rc6
	github.com/cosmos/ledger-go v0.9.2 // indirect
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.4.3
	github.com/gorilla/mux v1.8.0
	github.com/grpc-ecosystem/grpc-gateway v1.16.0
	github.com/imdario/mergo v0.3.11
	github.com/rakyll/statik v0.1.7
	github.com/spf13/cast v1.3.1
	github.com/spf13/cobra v1.1.1
	github.com/stretchr/testify v1.6.1
	github.com/tendermint/tendermint v0.34.0
	github.com/tendermint/tm-db v0.6.3
	google.golang.org/genproto v0.0.0-20201214200347-8c77b98c765d
	google.golang.org/grpc v1.33.2

)

replace github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.2-alpha.regen.4

replace github.com/cosmos/ledger-cosmos-go => github.com/crypto-com/ledger-cosmos-go v0.9.10-0.20200929055312-01e1d341de0f
