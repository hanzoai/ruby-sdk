# typed: strong

module HanzoAI
  module Resources
    class Assistants
      # Create assistant
      #
      #   API Reference docs -
      #   https://platform.openai.com/docs/api-reference/assistants/createAssistant
      sig do
        params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def create(request_options: {})
      end

      # Returns a list of assistants.
      #
      #   API Reference docs -
      #   https://platform.openai.com/docs/api-reference/assistants/listAssistants
      sig do
        params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def list(request_options: {})
      end

      # Delete assistant
      #
      #   API Reference docs -
      #   https://platform.openai.com/docs/api-reference/assistants/createAssistant
      sig do
        params(
          assistant_id: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(assistant_id, request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
