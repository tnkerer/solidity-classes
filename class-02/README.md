

# Steps to set up Truffle Development

Configuration: If you configured Truffle correctly, the command Truffle Networks should log all available networks.

```sh
truffle networks
```

To direct all truffle scripts other than `networks`, you need to parse a network parameter:

```sh
truffle console --network goerli
```

# Compiling Contracts

To compile contracts, run the command truffle compile:

```sh
truffle compile
```

## Compiling Results

There are 2 important parameters:

Bytecode: Machine level code that is deployed to the EVM
ABI: Used to create interfaces to the contract on the EVM

## Homework:

A. Create the Token Migration and Deploy

1) Compile Token.sol ( `truffle compile` )
2) Create a new token migration script ( Based on `1_initial_migration.js` )
3) Run `truffle migrate --network goerli`

B. Create a Token ( based on Token.sol ) that are Burnable and Mintable

C. Create a ABI ( Token.json ) file with the abi generated from Token.sol





