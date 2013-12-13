require_relative "../spec_helper"
require "lendger-core"

describe "Save a Thing" do
  def mock_repo_class
    repo_class = double("EntityRepository")
    allow(repo_class).to receive(:create).and_return(mock_repo)
    allow(repo_class).to receive(:update).and_return(mock_repo)
    repo_class
  end

  def mock_repo
    repo = double("entity_repo")
    allow(repo).to receive(:attributes)
    repo
  end

  context "when context includes :name and :description" do
    def context
      {repo_class: mock_repo_class, request: {name: "Foo", description: "Bar"}}
    end

    it "is successfull" do
      expect(Lendger::SaveThing.perform(context).success?).to be_true
    end
  end
end
