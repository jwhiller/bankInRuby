class Customer
attr_accessor :name, :location
  def initialize(name, location)


    @name = name
    @location = location
  end
end

  class Account
    attr_accessor :customer, :acct_type
    attr_reader :acct_number, :balance

    def initialize(acct_number, balance, acct_type, customer)
      @acct_number = acct_number
      @balance = balance
      @acct_type = acct_type
      @customer = customer
    end

    def deposit
     puts "How much would you like to deposit"
     amount = gets.chomp.to_f
     @balance += amount
     puts "Your new balance is $#{'%0.2f' %(@balance)}"
     # puts "Would you like to deposit more?"
     # # answer = gets.chomp.downcase
     # # if answer == "yes"
     # #
     # #
     # # end
  end

  def withdrawl
    puts "How much would you like to take out"
    amount = gets.chomp.to_f
    if @balance < amount
      @balance -= (amount + 25)
    else
      @balance -= amount
    end
    puts "Your new balance is $#{'%0.2f' %(@balance)}"
  end
end
