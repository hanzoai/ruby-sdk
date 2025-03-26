# typed: strong

module Hanzoai
  module Resources
    class Files
      class Content
        # Returns information about a specific file. that can be used across - Assistants
        #   API, Batch API This is the equivalent of GET
        #   https://api.openai.com/v1/files/{file_id}/content
        #
        #   Supports Identical Params as:
        #   https://platform.openai.com/docs/api-reference/files/retrieve-contents
        #
        #   Example Curl
        #
        #   ```
        #   curl http://localhost:4000/v1/files/file-abc123/content         -H "Authorization: Bearer sk-1234"
        #
        #   ```
        sig do
          params(
            file_id: String,
            provider: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def retrieve(file_id, provider:, request_options: {})
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
