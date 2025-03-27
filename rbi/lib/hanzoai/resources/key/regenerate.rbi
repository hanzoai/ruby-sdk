# typed: strong

module Hanzoai
  module Resources
    class Key
      class Regenerate
        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
