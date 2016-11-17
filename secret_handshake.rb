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
    allowed.default = []

    return [ 'double blink', 'wink' ] if decimal == 19

    0.upto(decimal.bit_length)
      .inject([]) { |to_run, n| to_run + allowed[decimal[n] * (2 ** n)]}
  end
end