# typed: strong

module Hanzoai
  module Resources
    class Threads
      class Messages
        # Create a message.
        #
        #   API Reference -
        #   https://platform.openai.com/docs/api-reference/messages/createMessage
        sig do
          params(
            thread_id: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def create(thread_id, request_options: {})
        end

        # Returns a list of messages for a given thread.
        #
        #   API Reference -
        #   https://platform.openai.com/docs/api-reference/messages/listMessages
        sig do
          params(
            thread_id: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def list(thread_id, request_options: {})
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
