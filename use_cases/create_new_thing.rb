require "interactor"

module Lendger
  class CreateThing
    include Interactor

    def perform
      thing = Thing.new(new_thing)

      if thing.valid?
        persisted_thing = thing_repository.create(thing.attributes)
        context[:thing] = persisted_thing.attributes
      else
        fail!(thing: thing.attributes)
      end
    end
  end
end
