package main

import (
    "fmt"
    "os"
)

func main() {

    // Define symbol
    var symbol string

    // Check if there's a command line argument, if true
    // The argument will be used as the symbol
    if len(os.Args) > 1 {
        symbol = os.Args[1]
    } else {
        // Otherwise look for an environment variable 'CCC_SYMBOL',
        // If found use it as the symbol
        env_symbol, exists := os.LookupEnv("CCC_SYMBOL")
        if exists {
            symbol = env_symbol
        // If env var doesn't exist, fallback to a heart as the symbol
        } else {
            symbol = ""
        }
    }

    fmt.Printf("\n")
    i := 0
    for i <= 7 {
        fmt.Printf(" \033[%vm%v \033[m", 30 + i, symbol)
        i = i + 1
    }
    fmt.Printf("\n")
    i = 0
    for i <= 7 {
        fmt.Printf(" \033[%vm%v \033[m", 90 + i, symbol)
        i = i + 1
    }
    fmt.Printf("\n\n")

}
