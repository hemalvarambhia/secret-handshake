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
    return [ 'wink', 'double blink' ] if decimal == 3
    return [ 'double blink', 'wink' ] if decimal == 19

    allowed[decimal]
  end
end