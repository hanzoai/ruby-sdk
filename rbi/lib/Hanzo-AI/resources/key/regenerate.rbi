# typed: strong

module HanzoAI
  module Resources
    class Key
      class Regenerate
        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
