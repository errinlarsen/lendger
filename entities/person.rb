require_relative "base"
require_relative "loan"

module Lendger
  class Person < Entity::Base
    include Virtus.model(finalize: false)

    attribute :name, String
    attribute :email, String
    attribute :loans, Array["Lendger::Loan"]

    def lend(thing, borrower)
      new_loan = Loan.new(lender: self, thing: thing, borrower: borrower)
      loans << new_loan
      return new_loan
    end

    def borrow(thing, lender)
      new_loan = Loan.new(lender: lender, thing: thing, borrower: self)
      loans << new_loan
      return new_loan
    end
  end
end
