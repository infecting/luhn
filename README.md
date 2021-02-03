# Luhn in Elixir

**All you could ever need for luhn verification and generation, in elixir**

## Installation

```elixir
def deps do
  [
    {:dep_from_git, git: "https://github.com/infecting/luhn.git"}
    # or this 
    {:luhnacy, "~> 0.1.0"}
  ]
end
```

## Documentation

**Validate Luhn Number**

```elixir
Luhn.valid?(12345674)

true

```

**Validate array of Luhn Numbers**
```elixir
Luhn.valid?([1234, 5678])

[false, false]
```


**Generate random Luhn Number**
```elixir
Luhn.random_gen(5)

61192
```

**Generate random Luhn Number from base**
```elixir
Luhn.generate_from_joker("1234***")

1234707
```


