require_relative "../spec_helper"
require "lendger/entities/thing"

# Finalize constants manually to resolve circular dependencies in Virtus
RSpec.configure { |config| config.before(:suite) { Virtus.finalize } }

describe Lendger::Thing do
  let(:attributes) { {id: 1, name: "foo", description: "bar"} }
  let(:thing) { Lendger::Thing.new(attributes) }

  describe ".new" do
    it "accepts a Hash of attributes" do
      expect { thing }.not_to raise_error
    end
  end

  describe "#attributes" do
    it "includes a name" do
      expect(thing.attributes).to include(name: "foo")
    end
    it "includes an (optional) description" do
      expect(thing.attributes).to include(description: "bar")
      expect {@thing = Lendger::Thing.new(name: "foo") }.to_not raise_error
      expect(@thing.description).to be_nil
    end
  end
end
