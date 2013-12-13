require_relative "base"
require_relative "thing"
require_relative "person"

module Lendger
  class Loan < Entity::Base
    include Virtus.model(finalize: false)

    attribute :lender, "Lendger::Person"
    attribute :thing, Lendger::Thing
    attribute :borrower, "Lendger::Person"
  end
end
