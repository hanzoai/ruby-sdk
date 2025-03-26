# frozen_string_literal: true

module HanzoAI
  module Resources
    class FineTuning
      class Jobs
        class Cancel
          # Cancel a fine-tuning job.
          #
          #   This is the equivalent of POST
          #   https://api.openai.com/v1/fine_tuning/jobs/{fine_tuning_job_id}/cancel
          #
          #   Supported Query Params:
          #
          #   - `custom_llm_provider`: Name of the LLM provider
          #   - `fine_tuning_job_id`: The ID of the fine-tuning job to cancel.
          #
          # @param fine_tuning_job_id [String]
          #
          # @param params [HanzoAI::Models::FineTuning::Jobs::CancelCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Object]
          def create(fine_tuning_job_id, params = {})
            @client.request(
              method: :post,
              path: ["v1/fine_tuning/jobs/%0s/cancel", fine_tuning_job_id],
              model: HanzoAI::Unknown,
              options: params[:request_options]
            )
          end

          # @param client [HanzoAI::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
