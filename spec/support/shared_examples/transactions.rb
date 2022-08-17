RSpec.shared_examples_for 'a successful create transaction request' do
  it "creates a new Transaction" do
    expect {
      post transactions_url, params: { transaction: valid_attributes }
    }.to change(Transaction, :count).by(1)
  end
end
