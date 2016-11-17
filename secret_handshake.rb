class SecretHandshake
  attr_reader :decimal
  def initialize decimal
    @decimal = decimal
  end

  def commands
    case decimal
    when 1
      [ 'wink' ]
    when 2
      [ 'double blink' ]
    end
  end
end