require 'rails_helper'

RSpec.describe ConvertAmountService do
  subject { described_class.convert(10, 'BYN') }

  before do
    stub_request(:get, "#{ConvertAmountService::API_URL}?#{{to: 'BYN', from: ConvertAmountService::DEFAULT_CURRENCY, amount: 10 }.to_query}").
        with(headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Apikey'=>ENV['API_KEY'],
          'Host'=>'api.apilayer.com',
          'User-Agent'=>'rest-client/2.1.0 (darwin20 x86_64) ruby/2.7.4p191'
        }).
        to_return(result)
  end

  context 'success' do
    let(:result) { { status: 200, body: {result: 20}.to_json, headers: {} } }
  
    it 'returns converted amount' do
      expect(subject.result).to eq(20)
    end
  end

  context 'failed' do
    let(:result) { { status: 400, body: {}.to_json, headers: {} } }

    it 'returns nit' do
      expect(subject.result).to eq(nil)
    end
  end
end
