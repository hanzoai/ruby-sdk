# typed: strong

module Hanzoai
  module Resources
    class Images
      class Generations
        # Image Generation
        sig do
          params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
            .returns(T.anything)
        end
        def create(request_options: {})
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
