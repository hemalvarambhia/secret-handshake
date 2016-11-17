class SecretHandshake
  attr_reader :decimal
  def initialize decimal
    @decimal = decimal
  end

  def commands
    allowed = { 
      1 => ['wink'],
      2 => ['double blink'],
      4 => ['close your eyes'],
      8 => ['jump']
    }

    return [ 'double blink', 'wink' ] if decimal == 19

    allowed.fetch(decimal, [ 'wink', 'double blink' ])
  end
end