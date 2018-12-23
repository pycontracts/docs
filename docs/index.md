# Welcome to BitcoinPy

### Rationale:

#### What is BitcoinPy 

Bitcoin has been around for almost 10 years now. However, despite its use as a store of value and a means of quickly transferring monetary value from A to B, it lacks any other use-case. However, during the recent years new ideas have emerged, one of which are "Smart Contracts" - virtual contracts which are settled based on the "code's law". Think of it as contracts, that have a hard coded set of when-then rules and which cannot be tampered with by any involved party. Ethereum is the first (and so far only) project that has created a well done and nicely useable smart contract ecosystem, although there have been numerous copy cat attempts which implemented their own blockchain layer and are now struggling with an alternation of adoption problems and 51\% attacks. We want to suggest how smart contracts, in a similar fashion as implemented by Ethereum, could be brought to the Bitcoin blockchain. BitcoinPy can be considered a "second layer" addition to the original Bitcoin protocol. The goal is to enable Turing-complete smart contracts that run on the native Bitcoin blockchain. But that is not enough, our vision was to make it as simple as possible. While Ethereum requires either advanced low-level byte code skills, or proficiency in a custom programming language termed Solidity (a lack of a full understanding of this new language may result in things like the [DAO hack](https://medium.com/swlh/the-story-of-the-dao-its-history-and-consequences-71e6a8a551ee) or the [Parity disaster](https://medium.com/chain-cloud-company-blog/parity-multisig-hack-again-b46771eaa838])), our requirement was to keep it as simple as possible: in our solution, users simply code their smart contracts in Python, a language that many are already familiar with and, as such, are likely to avoid such expensive mistakes. 

#### Who the heck are you 

We are a group of long-haired, bearded geeks who truly believe in a wider blockchain adoption over the next decades. As such, we want to contribute our skills, ideas and thoughts on how things might be improved and how we could finally get one step closer to that mysterious "Bitcoin killer application" that so many are desperately craving for. Maybe, if you bump into one of us at a CCC or a defcon conference, you can get us to know personally. Other than that, we will not put our selfies or names on any webpage and we will not brag with our useless collection of academic degrees. Why? Because we can. 

#### A Fair Launch

BitcoinPy can be considered launched the moment the code is available on GitHub and available for everyone to try out. We are not conducting any ICOs, we reject pre-mines and there will be no other pre-allocation of GAS. That is, the project launches in an entirely fair manner with no GAS in circulation. Everyone who wants to get some GAS will need to mine it on their own once the code is available. Even though some developers, who contribute to this project, might privately mine GAS on their own behalf, they have no advantage over anyone else. It's an even playing field. 

#### No Forks
BitcoinPy is a second-layer addition to the existing Bitcoin protocol. As such, it is fully compatible with the entire Bitcoin network in its current stage and with all other traditional Bitcoin nodes running the unmodified Bitcoin core client. Therefore, BitcoinPy neither is a soft- nor hard fork splitting the network into two different chains.

#### Early Launch Phase
Since this project is still exeperimental technology, the launch will include an "early bird" phase where the execution of contracts can be halted centrally in case something goes wrong. Even though transactions are permanent, during this phase incorrectly executed contracts may be reverted or altered, in a way that they reflect what was originally intended. We expect this "early bird" phase to last a few weeks at most. Then, once it is confirmed that everything works as expected, this "functionality" will be removed entirely from the code. If you do not feel comfortable with this, please feel free to chime in once the "early bird" phase is over.
