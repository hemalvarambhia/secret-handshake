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
    when 4
      [ 'close your eyes' ]
    when 8
      [ 'jump' ]
    end
  end
end