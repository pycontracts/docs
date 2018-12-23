# Python Contracts

#### General Overview

BitcoinPy contracts are developed in Python. Period. There are no additional annotations or code gimmicks that you need to learn. One of the most important things for us was to make the use of smart contracts as simple as possible. The only restriction that applies is, that you cannot use all of the traditional modules that you find in most Python distributions. While you can use all the power that the language gives you, modules that would give you access to the filesystem, network or other evil parts are not present. In face, the only module you can import and use is the Blockchain module.

#### Blockchain Module
The Blockchain module is a module that can be imported and used by any smart contract. While it is not part of a standard Python distribution, you are advised to use our own Python interpreter (contractpython) to develop and test your smart contracts.

This is an overview of the entire functionality of the Blockchain module:

| Function or Object                               | Type           | Description                                                  |
| ------------------------------------------------ | -------------- | ------------------------------------------------------------ |
| blockchain.store                                 | Dictionary     | A python dictionary object. Everything you store here will be stored permanently on the blockchain. Values may be overwritten. |
| blockchain.current\_block\_height()              | Numeric        | The height of the block this transaction was included into   |
| blockchain.current\_block\_time()                | Numeric        | The timestamp of the block this transaction was included into |
| blockchain.current\_block\_id()                  | Hex String     | The hex encoded block hash of the current block              |
| blockchain.previous\_block\_time()               | Numeric        | The timestamp of the previous block                          |
| blockchain.previous\_block\_id()                 | Hex String     | The hex encoded block hash of the previousblock              |
| blockchain.tx\_value()                           | Numeric        | The GAS value that was submitted with this transaction in satoshis |
| blockchain.contract\_balance()                   | Numeric        | The contract's current balance in satoshis                   |
| blockchain.gas\_left()                           | Numeric        | Every user specifies a maximum gas amount to be used when calling a contract - let us call this GAS fee. This value indicates the amount of GAS-fee left at a certain point in the contract execution flow |
| blockchain.contract\_id()                        | Address String | The address of the contract                                  |
| blockchain.tx\_sender()                          | Address String | The address of the transaction's sender                      |
| blockchain.random()                              | Numeric        | A pseudo-random 32 bit integer that comes from a random number generator that was seeded using parameters from the current Bitcoin blockchain's state |
| blockchain.send(address, value)                  | Void           | This call makes the contract send "value" to "address" from its contract balance |
| blockchain.suicide(address)                      | Void           | This call sends the entire balance of the contract to "address" and suicides, i.e., makes the contract unusable in the future |
| blockchain.<br />assert\_address\_check(address) | Void           | Allows you to check for the validity of a Bitcoin address. This call reverts the contract execution if an invalid address was provided. The caller just pays the GAS fees, but not the GAS amount he sent to the contract |
| blockchain.revert()                              | Void           | Reverts the contract execution. The caller just pays the GAS fees, but not the GAS amount he sent to the contract |



#### Balance Behavior

A user who calls a contract usually specifies two things. A "value" in GAS that he is sending to a contract (as a bet to our coin toss game for example, but it can be also 0) and a maximum "GAS fee", which is the maximum amount of GAS that he is willing to pay for the contract execution. Depending on the outcome of the contract execution, the user is either only paying the GAS fee, or paying the GAS fee plus the amount of GAS he is transferring to the contract. Here is a matrix that shows you all possible outcomes: 

| Event                                                        | What does the user pay         |
| ------------------------------------------------------------ | ------------------------------ |
| Contract executes fine                                       | GAS fee<br />+ transferred GAS |
| Contract suicides                                            | GAS fee<br />+ transferred GAS |
| Contract cannot execute properly<br />and throws an exception | GAS fee                        |
| Contract reverts using<br />blockchain.revert()              | GAS fee                        |
| Contract cannot be called<br />(insufficient balance or contract dead) | Nothing                        |
