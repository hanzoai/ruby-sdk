# typed: strong

module HanzoAI
  module Resources
    class Routes
      # Get a list of available routes in the FastAPI application.
      sig do
        params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def list(request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
