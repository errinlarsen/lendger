require "virtus"

module Lendger
  class Thing
    include Virtus.model

    attribute :id,          Integer
    attribute :name,        String
    attribute :description, String

    def valid?; true; end
  end
end
