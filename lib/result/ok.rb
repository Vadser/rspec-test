module Result
  class Ok
    attr_reader :value

    def initialize(value)
      @value = value
    end

    def result
      value
    end
  end
end
