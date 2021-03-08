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
ccc <symbol>
ccc 🤠
ccc 
ccc xdd
```

The symbol can be any character, or any string.

If you run `ccc` without a symbol, the default symbol will be used.

To define a default symbol, you can use an environment variable:

```zsh
export CCC_SYMBOL="🤠"
export CCC_SYMBOL=""
export CCC_SYMBOL="xdd"
```
