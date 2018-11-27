require "./costelog.cr"

# Get random sentence from Costeño idioms for your log.
# This is the **Crystal** verion of [gmoralesc's costelog](https://github.com/gmoralesc/costelog)
module Costelog
  # Get a random phrase. The *name* is optional.
  # ```
  # require "costelog-crystal"
  # puts Costelog.random_phrase          # => "Puya el burro"
  # puts Costelog.random_phrase "Wilson" # => "Va pa' esa Wilson"
  # ```
  def self.random_phrase(name = self.randomArray(Phrases::NAMES))
    phrase = self.randomArray(Phrases::COSTELOG)
    self.format(phrase, name)
  end

  # Get all the phrases. The *name* is optional.
  # ```
  # require "costelog-crystal"
  # puts Costelog.all          # => ["Que vaina e buena", "Ya te dije cuadro", "Va pa' esa cuadro", "cuadro Que vaina linda", ...]
  # puts Costelog.all "Wilson" # => ["Que vaina e buena", "Ya te dije Wilson", "Va pa' esa Wilson", "Wilson Que vaina linda", ...]
  # ```
  def self.all(name = self.randomArray(Phrases::NAMES))
    Phrases::COSTELOG.map { |phrase| self.format(phrase, name) }
  end

  protected def self.format(str : String, name : String) : String
    str.gsub(/#NAME{(.*?)}/, name)
  end

  protected def self.randomArray(arr : Array(String)) : String
    arr[Random.rand(0...arr.size)]
  end
end
