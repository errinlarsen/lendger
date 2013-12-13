require_relative "../spec_helper"
require "lendger-core"

describe "Create a Thing" do
  it "is successful" do
    mock_repository = double("ThingRepository").as_null_object
    attributes = {id: 1, name: "foo", description: "bar"}
    results = Lendger::CreateThing.perform(new_thing: attributes, thing_repository: mock_repository)
    expect(results).to be_success
  end

  it "calls #create to persist the Thing" do
    mock_repository = double("ThingRepository").as_null_object
    attributes = {id: 1, name: "foo", description: "bar"}
    Lendger::CreateThing.perform(new_thing: attributes, thing_repository: mock_repository)
    expect(mock_repository).to have_received(:create)
  end
end

