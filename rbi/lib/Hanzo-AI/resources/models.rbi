# typed: strong

module HanzoAI
  module Resources
    class Models
      # Use `/model/info` - to get detailed model information, example - pricing, mode,
      #   etc.
      #
      #   This is just for compatibility with openai projects like aider.
      sig do
        params(
          return_wildcard_routes: T.nilable(T::Boolean),
          team_id: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def list(return_wildcard_routes: nil, team_id: nil, request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
