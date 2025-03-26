# typed: strong

module Hanzoai
  module Resources
    class Threads
      sig { returns(Hanzoai::Resources::Threads::Messages) }
      attr_reader :messages

      sig { returns(Hanzoai::Resources::Threads::Runs) }
      attr_reader :runs

      # Create a thread.
      #
      #   API Reference -
      #   https://platform.openai.com/docs/api-reference/threads/createThread
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def create(request_options: {})
      end

      # Retrieves a thread.
      #
      #   API Reference - https://platform.openai.com/docs/api-reference/threads/getThread
      sig do
        params(
          thread_id: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve(thread_id, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
