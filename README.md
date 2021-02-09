## CCC

![](./palette.png)

### Installation

```zsh
make && sudo make install
```

### Usage

```zsh
clr <symbol>
clr 🤠
clr 
clr xdd
```

The symbol can be any character, or any string.

Running `clr` without a symbol, the default symbol will be used.

To define a default symbol, you can use an environment variable:

```zsh
export CCC_SYMBOL="🤠"
export CCC_SYMBOL=""
export CCC_SYMBOL="xdd"
```
