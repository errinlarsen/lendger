require_relative "base"
require_relative "person"

module Lendger
  class User < Entity::Base
    attribute :login, String
    attribute :person, Lendger::Person

    def lend(*args)
      person.lend(*args)
    end

    def borrow(*args)
      person.borrow(*args)
    end
  end
end
