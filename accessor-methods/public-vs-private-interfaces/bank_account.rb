class BankAccount
  attr_reader :customer_name, :type  #, :account_number

  def initialize(customer_name, type, account_number)
    @customer_name = customer_name
    @type = type
    @account_number = account_number
  end

  def teller_acct_num
    "XXX-XXX-" + @account_number[-3..-1]
  end

  def admin_acct_num
    @account_number
  end

  def change_customer_name(new_name)
    @customer_name = new_name.split.map(&:capitalize).join(' ')
  end

end
