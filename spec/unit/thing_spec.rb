require_relative "../spec_helper"
require "lendger/entities/thing"

describe Lendger::Thing do
  def thing(attributes={}, *other_args)
    Lendger::Thing.new(attributes, *other_args)
  end

  describe ".new" do
    it "accepts an empty list of parameters" do
      expect { thing }.not_to raise_error
    end
    it "accepts a Hash as it's only parameter" do
      expect { thing(foo: "bar") }.not_to raise_error
    end
    it "raises an error with more than one parameter" do
      expect { thing(:foo, "bar") }.to raise_error
    end
  end

  def self.expected_attributes
    {id: Integer, name: String, description: String}
  end

  describe "#attributes" do
    expected_attributes.each do |attr,_|
      it "includes #{attr.inspect}" do
        expect(thing.attributes).to include(attr)
      end
    end
  end

  def self.test_values
    {Integer => [42, "23"], String  => [:other_string, "some_string"]}
  end

  expected_attributes.each do |attr, klass|
    describe "#{attr.inspect} attribute" do
      it "can be set to any of: #{test_values[klass].inspect}" do
        self.class.test_values[klass].each do |test_value|
          test_thing = thing;
          expect { test_thing.send(:"#{attr}=", test_value) }.not_to raise_error
          expect(test_thing.send(attr)).to eql(send(klass.to_s, test_value))
        end
      end
    end
  end

  describe "#valid?" do
    it "responds" do
      expect(thing).to respond_to(:valid?)
    end
  end
end
