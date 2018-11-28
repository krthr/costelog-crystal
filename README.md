# costelog-crystal

![GitHub top language](https://img.shields.io/github/languages/top/krthr/costelog-crystal.svg)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/krthr/costelog-crystal.svg)
![GitHub release](https://img.shields.io/github/release/krthr/costelog-crystal.svg)
[![MIT License](https://img.shields.io/npm/l/costelog.svg?style=flat-square)](http://opensource.org/licenses/MIT)

This is the **Crystal** version of [gmoralesc's costelog](https://github.com/gmoralesc/costelog)

## Installation

- Add the dependency to your `shard.yml`:

```yaml
dependencies:
  costelog-crystal:
    github: krthr/costelog-crystal
```

- Run `shards install`

## Usage

```crystal
require "costelog-crystal"

# Get just one phrase
puts Costelog.random_phrase          # => "Puya el burro"
puts Costelog.random_phrase "Wilson" # => "Va pa' esa Wilson"

# Get all the phrases
puts Costelog.all          # => ["Que vaina e buena", "Ya te dije cuadro", "Va pa' esa cuadro", "cuadro Que vaina linda", ...]
puts Costelog.all "Wilson" # => ["Que vaina e buena", "Ya te dije Wilson", "Va pa' esa Wilson", "Wilson Que vaina linda", ...]
```

The _name_ param is optional. If you dont pass any name, the library will select a random valid name.

## TODO

TODO: Write specs

## Contributing

1. Fork it (<https://github.com/krthr/costelog-crystal/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- The original library was created by [Gustavo Morales](https://twitter.com/gmoralesc)
- [krthr](https://github.com/krthr) - creator and maintainer
