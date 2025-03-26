# typed: strong

module HanzoAI
  module Resources
    class Cache
      class Redis
        # Endpoint for getting /redis/info
        sig do
          params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
            .returns(T.anything)
        end
        def retrieve_info(request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
