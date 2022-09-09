
After editing your smart contract, you can force truffle to re-deploy the artifacts by using the command

```sh
truffle migrate --network goerli --reset
```
It is possible to verify another contract that has the exact same code, by parsing its address on the verify command

```sh
truffle run verify JaumCoin@0x78e971B8fB35CCFc9741Ef343C8a0ad318FA56F5 --network goerli
```

# Solidity Restrictions

 - The bytecode of a Smart Contract cannot be bigger than 24 kb;
 - There is limit of 16 local variables;




