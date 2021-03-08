## CCC

![](./palette.png)

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
export CCC_SYMBOL="" export CCC_SYMBOL="xdd"
```

### Installation

Running `make` will compile ccc in every language and copy it to bin/*_ccc


#### C
```zsh
make && sudo make install
```

#### Sh
```zsh
make sh && sudo make install
```

#### Rust
```zsh
make rust && sudo make install
```
#### Go
```zsh
make go && sudo make install
```
#### Lua
```zsh
make lua && sudo make install
```
#### Python
```zsh
make py && sudo make install
```
