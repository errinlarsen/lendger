require "interactor"

module Lendger
  class BuildThing
    include Interactor

    def perform
      context[:thing] = Thing.new.attributes
    end
  end
end
