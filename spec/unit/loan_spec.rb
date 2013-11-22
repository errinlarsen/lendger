require_relative "../spec_helper"
require "lendger/entities/loan"

# Finalize constants manually to resolve circular dependencies in Virtus
RSpec.configure { |config| config.before(:suite) { Virtus.finalize } }

describe Lendger::Loan do
  let(:lender)     { {id: 1, name: "Lender"} }
  let(:borrower)   { {id: 2, name: "Borrower"} }
  let(:attributes) { {id: 3, lender: lender, borrower: borrower} }
  let(:loan)       { Lendger::Loan.new(attributes) }

  describe ".new" do
    it "accepts a Hash of attributes" do
      expect { loan }.not_to raise_error
    end
  end

  describe "#attributes" do
    it "includes a lender" do
      expect(loan.attributes).to include(:lender)
    end
    it "includes a thing" do
      expect(loan.attributes).to include(:thing)
    end
    it "includes a borrower" do
      expect(loan.attributes).to include(:borrower)
    end
  end
end
