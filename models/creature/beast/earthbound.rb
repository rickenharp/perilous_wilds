class Creature < Table
  class Beast < Table
    class Earthbound < Table
      OPTIONS = RangedHash.new(
        [
          'termite/tick/louse',
          'snail/slug/worm',
          'ant/centipede/scorpion',
          'snake/lizard',
          'vole/rat/weasel',
          'boar/pig',
          'dog/fox/wolf',
          'cat/lion/panther',
          'deer/horse/camel',
          'ox/rhino',
          'bear/ape/gorilla',
          'mammoth/dinsoaur'
        ]
      ).freeze
    end
  end
end
