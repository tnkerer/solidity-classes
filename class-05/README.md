# Review on Overflow and Underflow using Python

## Overflow & Underflow

Overflow and underflow are two common problems that can occur when performing arithmetic operations on a computer. Overflow occurs when the result of an arithmetic operation is too large to be represented by the data type used to store the result. Underflow occurs when the result of an arithmetic operation is too small to be represented by the data type used to store the result.

## Overflow

1 byte -> 8 bits

00000000 -> 11111111 
[ 0 ] -> [ 255 ] // In binary

00000000 -> 0 <br>
00000001 -> 1 <br>
00000010 -> 2 <br>
00000011 -> 3 <br>
00000100 -> 4 <br>

11111111 -> 255

## Token ERC20 standard

ERC20 is a set of rules to standardize assets on the XinFin network. Every ERC20 Token must be able to execute the following methods:

- `totalSupply()`
- `balanceOf(address account)` 
- `allowance(address owner, address spender)`
- `transfer(address recipient, uint amount)`
- `approve(address spender, uint amount)`
- `transferFrom(address sender, address recipient, uint amount)`

These are the minimum required methods that allow an asset on the XinFin network to be called an ERC20 token. Also, a XRC20 token must be able to emit the following `Events` on the blockchain:

- `Approval(address indexed tokenOwner, address indexed spender,
 uint tokens)`
 - `Transfer(address indexed from, address indexed to,
 uint tokens)`
 
Events are helpers that come in handy in the exhaustive labor of indexing state changes, and they are essential to off-chain applications to find relevant data on the blockchain. By mapping all `Transfer` events, for example, we can fetch all the historic data on token transfers more easily.

Last but not least, a few contract constants that are public that are also very important to have are:

- `name`
- `symbol`
- `decimals`

Without these public constants, it would be impossible to label tokens on block explorers, for example. In this tutorial we will deploy a ERC20 token that have all the `Methods`, `Events` and `Constants` mentioned above.









