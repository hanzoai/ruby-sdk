# frozen_string_literal: true

module HanzoAI
  module Resources
    class Key
      class Regenerate
        # @param client [HanzoAI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
