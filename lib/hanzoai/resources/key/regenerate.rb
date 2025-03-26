# frozen_string_literal: true

module Hanzoai
  module Resources
    class Key
      class Regenerate
        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
