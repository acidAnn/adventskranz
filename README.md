# adventskranz :christmas_tree:
A command line tool for printing a festive Adventskranz on the CLI.

```
                                                        
                                             ^      ^                
                                            (o)    (o)               
                                           __|__  __|__  __|__  __|__
                                           |   |  |   |  |   |  |   |
                                           |   |  |   |  |   |  |   |
                                           | 1 |  | 2 |  | 3 |  | 4 |
                                           |   |  |   |  |   |  |   |
                                           |___|  |___|  |___|  |___|
                                           --------------------------
```



## setup
```sh
git clone https://github.com/acidAnn/adventskranz.git
cd adventskranz
./adventskranz
```

### Festive bash

If you want to display the adventskranz with every startup of your shell, simply add 

```sh
 if [[ $(date +%s) -le $(date +%s --date $(date +%Y)-12-24) ]] && [[ $(date +%s) -gt $(date +%s --date "$(date +%Y)-12-24 -4weeks") ]] ; then
    bash /path/to/adventskranz/adventskranz
fi
```

to your `~/.bashrc`.

## usage
```sh
Usage: adventskranz [--version] [-h | --help] [-c | --candle CANDLE_NUM]
Print a festive Adventskranz on the CLI.
  --version   Show version
  -h | --help Show help
  -c | --candle CANDLE_NUM Give the number of burning candles
```
