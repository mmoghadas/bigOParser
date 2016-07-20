# bigoparser
simple tool to find word in a file

### Requirements
- Ruby (tested on 2.0.0p648)

### Installation
```bash
$ bundle install
$ alias bigoparser="bundle exec ./bin/bigoparser"
```

### Usage
```bash

# Usage Help
$ bigoparser --help
$ bigoparser extract --file <file_name> --line <line_number> --word <word_number>
$ bigoparser extract --file sample/input.txt --line 3 --word 4
