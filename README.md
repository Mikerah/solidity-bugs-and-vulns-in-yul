# Solidity Bugs in Yul

This repo is a reference of many Solidity vulnerabilities compiled to Yul, an intermediate language for the EVM.
It is meant to be a reference for auditors that are dealing with Yul codebases as opposed to Solidity codebases.

The examples are taken from the following references:
- [Not So Smart Contracts](https://github.com/crytic/not-so-smart-contracts)
- [Solidity Security: List of known vulnerabilities and anti-patterns](https://blog.sigmaprime.io/solidity-security.html)

Note that due to the experimentation nature of Yul, many smart contracts written in Solidity to not compile yet. 

TODO:
- [ ] Add explainer of vulnerability and how it translates to Yul
- [ ] Add compilable examples for certain vulnerabilities in folders that only contain a .sol file
