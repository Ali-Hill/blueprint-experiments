# Experiments in using information from Contract Blueprints 

This repo is investigating using contract blueprints specified in CIP-57: https://cips.cardano.org/cip/CIP-57. 

# Getting uplc from blueprint using aiken

Prerequisites: [aiken](https://aiken-lang.org/installation-instructions)

Generate the blueprint using: 

```
aiken build 
```

The cbor hex code noted in the blueprint by the `compiledCode` field is then stored in the file `helloWorld.cbor`. 

The uplc is generated from the compile code by running the following command: 

`aiken uplc decode helloWorld.cbor -c --hex >> helloWorld.uplc`

## Getting uplc from blueprint using HarmonicLabs uplc library

Prerequisites:
   1. uplc from [HarmonicLabs](https://github.com/HarmonicLabs/uplc)
   2. npx 

Add the desired cbor code to `convert.ts` then run:

```
npx ts-node convert.ts >> helloWorld.uplc
```

Note: The cbor hex file should start with the plutus compiler version when using `convert.ts`. In the case of the helloWorld example the original cbor is in the form: 

`587b010000323232...` to use with the uplc library everything before the plutus compiler version which is `10000` should be removed e.g. `587b0` should be removed. See the following [link](https://cardano.stackexchange.com/questions/11436/decompiling-plutus-core-binary-encoding) for more discussion on this.

