require_relative "entity"

module Lendger
  class Thing < Entity
    attribute :name, String
    attribute :description, String
  end
end
