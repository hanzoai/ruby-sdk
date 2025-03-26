# frozen_string_literal: true

module Hanzoai
  module Resources
    class FineTuning
      class Jobs
        # @return [Hanzoai::Resources::FineTuning::Jobs::Cancel]
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
        #
        # @param params [Hanzoai::Models::FineTuning::JobCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Hanzoai::Models::FineTuning::JobCreateParams::CustomLlmProvider] :custom_llm_provider
        #
        #   @option params [String] :model
        #
        #   @option params [String] :training_file
        #
        #   @option params [Hanzoai::Models::FineTuning::JobCreateParams::Hyperparameters, nil] :hyperparameters
        #
        #   @option params [Array<String>, nil] :integrations
        #
        #   @option params [Integer, nil] :seed
        #
        #   @option params [String, nil] :suffix
        #
        #   @option params [String, nil] :validation_file
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params)
          parsed, options = Hanzoai::Models::FineTuning::JobCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/fine_tuning/jobs",
            body: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
        end

        # Retrieves a fine-tuning job. This is the equivalent of GET
        #   https://api.openai.com/v1/fine_tuning/jobs/{fine_tuning_job_id}
        #
        #   Supported Query Params:
        #
        #   - `custom_llm_provider`: Name of the LLM provider
        #   - `fine_tuning_job_id`: The ID of the fine-tuning job to retrieve.
        #
        # @param fine_tuning_job_id [String]
        #
        # @param params [Hanzoai::Models::FineTuning::JobRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider] :custom_llm_provider
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def retrieve(fine_tuning_job_id, params)
          parsed, options = Hanzoai::Models::FineTuning::JobRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/fine_tuning/jobs/%0s", fine_tuning_job_id],
            query: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
        end

        # Lists fine-tuning jobs for the organization. This is the equivalent of GET
        #   https://api.openai.com/v1/fine_tuning/jobs
        #
        #   Supported Query Params:
        #
        #   - `custom_llm_provider`: Name of the LLM provider
        #   - `after`: Identifier for the last job from the previous pagination request.
        #   - `limit`: Number of fine-tuning jobs to retrieve (default is 20).
        #
        # @param params [Hanzoai::Models::FineTuning::JobListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider] :custom_llm_provider
        #
        #   @option params [String, nil] :after
        #
        #   @option params [Integer, nil] :limit
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def list(params)
          parsed, options = Hanzoai::Models::FineTuning::JobListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/fine_tuning/jobs",
            query: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
        end

        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
          @cancel = Hanzoai::Resources::FineTuning::Jobs::Cancel.new(client: client)
        end
      end
    end
  end
end
