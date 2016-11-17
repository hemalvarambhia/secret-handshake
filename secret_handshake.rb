class SecretHandshake
  attr_reader :decimal
  def initialize decimal
    @decimal = decimal
  end

  def commands
    return [] unless decimal.is_a? Fixnum

    return handshake.reverse if decimal.bit_length == 5

    handshake
  end

  private

  def handshake
    number_of_bits = decimal.bit_length
    0.upto(number_of_bits)
      .inject([]) { |to_run, n| to_run + handshake_for(n) }
  end

  def handshake_for n
    handshake = { 
      1 => ['wink'],
      2 => ['double blink'],
      4 => ['close your eyes'],
      8 => ['jump']
    }
    handshake.default = []
    
    handshake[decimal[n] * (2 ** n)]
  end
end