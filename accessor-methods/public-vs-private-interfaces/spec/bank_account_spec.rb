require_relative '../bank_account'

describe BankAccount do
  let(:account) { BankAccount.new("Junipero Serra", "Checking", "347-923-239") }

  it "allows to read the customer name" do
    expect(account.customer_name).to eq "Junipero Serra"
  end

  it "allows to read the account type" do
    expect(account.type).to eq "Checking"
  end

  # => Removed test and replaced with Admin and Teller Num
  # it "allows to read the account number" do
  #   expect(account.account_number).to eq "347-923-239"
  # end

  it "allows teller to call masked account" do
    expect(account.teller_acct_num).to eq "XXX-XXX-239"
  end

  it "allows to read the account number" do
    expect(account.admin_acct_num).to eq "347-923-239"
  end

  it "allows to change customer name" do
    expect(account.change_customer_name("junipero jones")).to eq "Junipero Jones"
  end
end
