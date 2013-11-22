require_relative "../spec_helper"
require "lendger/entities/user"

# Finalize constants manually to resolve circular dependencies in Virtus
RSpec.configure { |config| config.before(:suite) { Virtus.finalize } }

describe Lendger::User do
  let(:attributes) { {id: 1, login: "foo", email: "foo@bar.com"} }
  let(:user) { Lendger::User.new(attributes) }

  describe ".new" do
    it "accepts a Hash of attributes" do
      expect { user }.not_to raise_error
    end
  end

  describe "#attributes" do
    it "includes a login" do
      expect(user.attributes).to include(login: "foo")
    end
    it "includes a person" do
      expect(user.attributes).to include(:person)
    end
  end
end
