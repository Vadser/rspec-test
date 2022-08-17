class Transaction < ApplicationRecord
  validates :currency, inclusion: { in: ['BYN', 'EUR'] }

  def convert
    result = ConvertAmountService.convert(amount, currency)
    update(converted_amount: result.result) if result.result
  end
end
