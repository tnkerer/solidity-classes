

# Steps to set up Truffle Development

## Configuration: Configuring truffle-config.js 

```sh
truffle init
yarn init
yarn add @truffle/hdwallet-provider
```

- @truffle/hdwallet-provider creates the ethereum account under which we will deploy our contracts.

- Create a secrets.json file with your mnemonic pass.

- We installed ganache-cli to create a local testnet.

```sh
yarn add ganache-cli
```

- And created the script to run ganache-cli on the package.json file.

- Run network script to check if the configuration is ok.

```sh
truffle networks
```
