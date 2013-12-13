require "interactor"

module Lendger
  class SaveThing
    include Interactor

    def perform
      thing = Thing.new(request)

      if thing.valid?
        context[:response] = create_or_update(thing).attributes
      else
        fail!(response: thing.attributes)
      end
    end

    private
    def create_or_update(entity)
      if entity.id.nil?
        repo_class.create(entity.attributes)
      else
        repo_class.update(entity.id, entity.attributes)
      end
    end
  end
end
