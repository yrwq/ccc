## CCC

![](./palette.png)

### Usage

```zsh
ccc "any string"
ccc 🤠
ccc 
```

The symbol can be any character, or any string.

If you run `ccc` without an argument, the default symbol will be used(usually a language symbol from (nerd-fonts)[https://github.com/ryanoasis/nerd-fonts]).

To define a default symbol, you can use an environment variable:

```zsh
export CCC_SYMBOL="any string"
export CCC_SYMBOL="🤠"
export CCC_SYMBOL=""
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
