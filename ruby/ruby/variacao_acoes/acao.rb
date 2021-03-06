# frozen_string_literal: true

# Acao da bolsa
class Acao
  def initialize(code, values)
    @code = code
    @values = values
  end

  def add_value(date, value)
    @values << { date => date, value => value }
  end

  def to_hash
    {
      'code' => @code,
      'values' => @values
    }
  end
end
