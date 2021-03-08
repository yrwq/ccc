## CCC

![](./palette.png)

### Installation

#### C
```zsh
make && sudo make install
```

#### Sh
```zsh
sudo make sh
```

### Usage

```zsh
clr <symbol>
clr 🤠
clr 
clr xdd
```

The symbol can be any character, or any string.

If you run `clr` without a symbol, the default symbol will be used.

To define a default symbol, you can use an environment variable:

```zsh
export CCC_SYMBOL="🤠"
export CCC_SYMBOL=""
export CCC_SYMBOL="xdd"
```
