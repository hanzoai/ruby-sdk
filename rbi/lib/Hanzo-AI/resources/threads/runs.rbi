# typed: strong

module HanzoAI
  module Resources
    class Threads
      class Runs
        # Create a run.
        #
        #   API Reference: https://platform.openai.com/docs/api-reference/runs/createRun
        sig do
          params(
            thread_id: String,
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def create(thread_id, request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
