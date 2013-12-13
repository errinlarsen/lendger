require_relative "../spec_helper"
require "lendger-core"

describe "Build a new Thing" do
  def results
    Lendger::BuildThing.perform
  end

  context "when passing no params" do
    it "is successfull" do
      expect(results.success?).to be_true
    end

    it "returns the all the Thing's attributes with nil values" do
      expect(results.thing).to eql(id: nil, name: nil, description: nil)
    end
  end
end
