

# Checking Contract Deployment and Artifacts

After running the compile script:

```sh
truffle compile
```

You should be able to see your contract Artifacts at `contract/build`, and all other artifacts inherited by the main contract.

If the migration files are corretly configured, you can go ahead and run

```sh
truffle migrate --network goerli
```

And now, if the migration was successful, you can re-run truffle network to check your currently deployed contracts:

```sh
truffle networks
```

# Installing Verification Plugin:

Start by installing the plugin locally:

```sh
yarn add truffle-plugin-verify
```

Configure plugins and API keys on the `truffle-config.js` file and then run the script:

```sh
truffle run verify JaumCoin --network goerli
```

(https://github.com/rkalis/truffle-plugin-verify)

## Homework:

1. Make the TOKEN contract Inherit from `Ownable.sol`;

2. Verify the contract on etherscan:

A. Configure `truffle-plugin-verify`;<br>
B. Run the verify script as in the example above;<br>
C. Try to use the `mint` and `burn` methods straight from Etherscan. 




