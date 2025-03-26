# typed: strong

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
          sig do
            params(
              fine_tuning_job_id: String,
              request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
            )
              .returns(T.anything)
          end
          def create(fine_tuning_job_id, request_options: {})
          end

          sig { params(client: HanzoAI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
