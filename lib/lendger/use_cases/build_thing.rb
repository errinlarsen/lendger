require_relative "use_case"

module Lendger
  class BuildThing < UseCase
    def perform
      context[:thing] = Thing.new.attributes
    end
  end
end
