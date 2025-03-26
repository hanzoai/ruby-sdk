# typed: strong

module HanzoAI
  module Resources
    class FineTuning
      class Jobs
        sig { returns(HanzoAI::Resources::FineTuning::Jobs::Cancel) }
        attr_reader :cancel

        # Creates a fine-tuning job which begins the process of creating a new model from
        #   a given dataset. This is the equivalent of POST
        #   https://api.openai.com/v1/fine_tuning/jobs
        #
        #   Supports Identical Params as:
        #   https://platform.openai.com/docs/api-reference/fine-tuning/create
        #
        #   Example Curl:
        #
        #   ```
        #   curl http://localhost:4000/v1/fine_tuning/jobs       -H "Content-Type: application/json"       -H "Authorization: Bearer sk-1234"       -d '{
        #       "model": "gpt-3.5-turbo",
        #       "training_file": "file-abc123",
        #       "hyperparameters": {
        #         "n_epochs": 4
        #       }
        #     }'
        #   ```
        sig do
          params(
            custom_llm_provider: HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::OrSymbol,
            model: String,
            training_file: String,
            hyperparameters: T.nilable(T.any(HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters, HanzoAI::Util::AnyHash)),
            integrations: T.nilable(T::Array[String]),
            seed: T.nilable(Integer),
            suffix: T.nilable(String),
            validation_file: T.nilable(String),
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def create(
          custom_llm_provider:,
          model:,
          training_file:,
          hyperparameters: nil,
          integrations: nil,
          seed: nil,
          suffix: nil,
          validation_file: nil,
          request_options: {}
        )
        end

        # Retrieves a fine-tuning job. This is the equivalent of GET
        #   https://api.openai.com/v1/fine_tuning/jobs/{fine_tuning_job_id}
        #
        #   Supported Query Params:
        #
        #   - `custom_llm_provider`: Name of the LLM provider
        #   - `fine_tuning_job_id`: The ID of the fine-tuning job to retrieve.
        sig do
          params(
            fine_tuning_job_id: String,
            custom_llm_provider: HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::OrSymbol,
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def retrieve(fine_tuning_job_id, custom_llm_provider:, request_options: {})
        end

        # Lists fine-tuning jobs for the organization. This is the equivalent of GET
        #   https://api.openai.com/v1/fine_tuning/jobs
        #
        #   Supported Query Params:
        #
        #   - `custom_llm_provider`: Name of the LLM provider
        #   - `after`: Identifier for the last job from the previous pagination request.
        #   - `limit`: Number of fine-tuning jobs to retrieve (default is 20).
        sig do
          params(
            custom_llm_provider: HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::OrSymbol,
            after: T.nilable(String),
            limit: T.nilable(Integer),
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def list(custom_llm_provider:, after: nil, limit: nil, request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
