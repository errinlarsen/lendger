require_relative "../spec_helper"
require "lendger"

# Finalize constants manually to resolve circular dependencies in Virtus
RSpec.configure { |config| config.before(:suite) { Virtus.finalize } }

describe "Creating a new Loan" do
  let(:person)   { Lendger::Person.new(name: "Foo Bar", email: "foo@bar.com") }
  let(:user)     { Lendger::User.new(login: "foobar", person: person) }
  let(:thing)    { Lendger::Thing.new(name: "Something") }
  let(:other)    { Lendger::Person.new(name: "Somebody Else") }

  context "when the User is the lender" do
    let(:loan) do
      user.lend(thing, other)
    end

    it "associates the User's Person to the Loan as the lender" do
      expect(loan.lender).to be_a(Lendger::Person)
      expect(loan.lender).to eql(user.person)
    end
    it "associates the other Person to the new Loan as the borrower" do
      expect(loan.borrower).to be_a(Lendger::Person)
      expect(loan.borrower).to eql(other)
    end
    it "associates a Thing to the new Loan" do
      expect(loan.thing).to be_a(Lendger::Thing)
      expect(loan.thing).to eql(thing)
    end
  end

  context "when the User is the borrower" do
    let(:loan) do
      user.borrow(thing, other)
    end

    it "associates the User's Person to the Loan as the borrower" do
      expect(loan.borrower).to be_a(Lendger::Person)
      expect(loan.borrower).to eql(user.person)
    end
    it "associates the other Person to the new Loan as the lender" do
      expect(loan.lender).to be_a(Lendger::Person)
      expect(loan.lender).to eql(other)
    end
    it "associates a Thing to the new Loan" do
      expect(loan.thing).to be_a(Lendger::Thing)
      expect(loan.thing).to eql(thing)
    end
  end
end
