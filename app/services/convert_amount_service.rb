class ConvertAmountService
  API_URL = 'https://api.apilayer.com/exchangerates_data/convert'.freeze
  DEFAULT_CURRENCY = 'USD'.freeze

  class << self
    def convert(amount, currency)
      response = RestClient.get(API_URL, {apikey: ENV['API_KEY'], params: {to: currency, from: DEFAULT_CURRENCY, amount: amount }})
      Result::Ok.new(JSON.parse(response.body)['result'])
    rescue
      Result::Error.new
    end
  end
end
