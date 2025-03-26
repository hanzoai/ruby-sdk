# typed: strong

module Hanzoai
  module Models
    module Model
      class UpdateDeployment < Hanzoai::BaseModel
        sig { returns(T.nilable(Hanzoai::Models::Model::UpdateDeployment::LlmParams)) }
        attr_reader :llm_params

        sig do
          params(
            llm_params: T.nilable(T.any(Hanzoai::Models::Model::UpdateDeployment::LlmParams, Hanzoai::Util::AnyHash))
          )
            .void
        end
        attr_writer :llm_params

        sig { returns(T.nilable(Hanzoai::Models::ModelInfo)) }
        attr_reader :model_info

        sig { params(model_info: T.nilable(T.any(Hanzoai::Models::ModelInfo, Hanzoai::Util::AnyHash))).void }
        attr_writer :model_info

        sig { returns(T.nilable(String)) }
        attr_accessor :model_name

        sig do
          params(
            llm_params: T.nilable(T.any(Hanzoai::Models::Model::UpdateDeployment::LlmParams, Hanzoai::Util::AnyHash)),
            model_info: T.nilable(T.any(Hanzoai::Models::ModelInfo, Hanzoai::Util::AnyHash)),
            model_name: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(llm_params: nil, model_info: nil, model_name: nil)
        end

        sig do
          override
            .returns(
              {
                llm_params: T.nilable(Hanzoai::Models::Model::UpdateDeployment::LlmParams),
                model_info: T.nilable(Hanzoai::Models::ModelInfo),
                model_name: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class LlmParams < Hanzoai::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :api_base

          sig { returns(T.nilable(String)) }
          attr_accessor :api_key

          sig { returns(T.nilable(String)) }
          attr_accessor :api_version

          sig { returns(T.nilable(String)) }
          attr_accessor :aws_access_key_id

          sig { returns(T.nilable(String)) }
          attr_accessor :aws_region_name

          sig { returns(T.nilable(String)) }
          attr_accessor :aws_secret_access_key

          sig { returns(T.nilable(String)) }
          attr_accessor :budget_duration

          sig { returns(T.nilable(T::Array[T.any(String, Hanzoai::Models::ConfigurableClientsideParamsCustomAuth)])) }
          attr_accessor :configurable_clientside_auth_params

          sig { returns(T.nilable(String)) }
          attr_accessor :custom_llm_provider

          sig { returns(T.nilable(Float)) }
          attr_accessor :input_cost_per_second

          sig { returns(T.nilable(Float)) }
          attr_accessor :input_cost_per_token

          sig { returns(T.nilable(String)) }
          attr_accessor :llm_trace_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :max_budget

          sig { returns(T.nilable(Float)) }
          attr_accessor :max_file_size_mb

          sig { returns(T.nilable(Integer)) }
          attr_accessor :max_retries

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :merge_reasoning_content_in_choices

          sig { returns(T.nilable(String)) }
          attr_accessor :model

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :model_info

          sig { returns(T.nilable(String)) }
          attr_accessor :organization

          sig { returns(T.nilable(Float)) }
          attr_accessor :output_cost_per_second

          sig { returns(T.nilable(Float)) }
          attr_accessor :output_cost_per_token

          sig { returns(T.nilable(String)) }
          attr_accessor :region_name

          sig { returns(T.nilable(Integer)) }
          attr_accessor :rpm

          sig { returns(T.nilable(T.any(Float, String))) }
          attr_accessor :stream_timeout

          sig { returns(T.nilable(T.any(Float, String))) }
          attr_accessor :timeout

          sig { returns(T.nilable(Integer)) }
          attr_accessor :tpm

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :use_in_pass_through

          sig { returns(T.nilable(T.any(T.anything, String))) }
          attr_accessor :vertex_credentials

          sig { returns(T.nilable(String)) }
          attr_accessor :vertex_location

          sig { returns(T.nilable(String)) }
          attr_accessor :vertex_project

          sig { returns(T.nilable(String)) }
          attr_accessor :watsonx_region_name

          sig do
            params(
              api_base: T.nilable(String),
              api_key: T.nilable(String),
              api_version: T.nilable(String),
              aws_access_key_id: T.nilable(String),
              aws_region_name: T.nilable(String),
              aws_secret_access_key: T.nilable(String),
              budget_duration: T.nilable(String),
              configurable_clientside_auth_params: T.nilable(
                T::Array[T.any(String, Hanzoai::Models::ConfigurableClientsideParamsCustomAuth, Hanzoai::Util::AnyHash)]
              ),
              custom_llm_provider: T.nilable(String),
              input_cost_per_second: T.nilable(Float),
              input_cost_per_token: T.nilable(Float),
              llm_trace_id: T.nilable(String),
              max_budget: T.nilable(Float),
              max_file_size_mb: T.nilable(Float),
              max_retries: T.nilable(Integer),
              merge_reasoning_content_in_choices: T.nilable(T::Boolean),
              model: T.nilable(String),
              model_info: T.nilable(T.anything),
              organization: T.nilable(String),
              output_cost_per_second: T.nilable(Float),
              output_cost_per_token: T.nilable(Float),
              region_name: T.nilable(String),
              rpm: T.nilable(Integer),
              stream_timeout: T.nilable(T.any(Float, String)),
              timeout: T.nilable(T.any(Float, String)),
              tpm: T.nilable(Integer),
              use_in_pass_through: T.nilable(T::Boolean),
              vertex_credentials: T.nilable(T.any(T.anything, String)),
              vertex_location: T.nilable(String),
              vertex_project: T.nilable(String),
              watsonx_region_name: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            api_base: nil,
            api_key: nil,
            api_version: nil,
            aws_access_key_id: nil,
            aws_region_name: nil,
            aws_secret_access_key: nil,
            budget_duration: nil,
            configurable_clientside_auth_params: nil,
            custom_llm_provider: nil,
            input_cost_per_second: nil,
            input_cost_per_token: nil,
            llm_trace_id: nil,
            max_budget: nil,
            max_file_size_mb: nil,
            max_retries: nil,
            merge_reasoning_content_in_choices: nil,
            model: nil,
            model_info: nil,
            organization: nil,
            output_cost_per_second: nil,
            output_cost_per_token: nil,
            region_name: nil,
            rpm: nil,
            stream_timeout: nil,
            timeout: nil,
            tpm: nil,
            use_in_pass_through: nil,
            vertex_credentials: nil,
            vertex_location: nil,
            vertex_project: nil,
            watsonx_region_name: nil
          )
          end

          sig do
            override
              .returns(
                {
                  api_base: T.nilable(String),
                  api_key: T.nilable(String),
                  api_version: T.nilable(String),
                  aws_access_key_id: T.nilable(String),
                  aws_region_name: T.nilable(String),
                  aws_secret_access_key: T.nilable(String),
                  budget_duration: T.nilable(String),
                  configurable_clientside_auth_params: T.nilable(T::Array[T.any(String, Hanzoai::Models::ConfigurableClientsideParamsCustomAuth)]),
                  custom_llm_provider: T.nilable(String),
                  input_cost_per_second: T.nilable(Float),
                  input_cost_per_token: T.nilable(Float),
                  llm_trace_id: T.nilable(String),
                  max_budget: T.nilable(Float),
                  max_file_size_mb: T.nilable(Float),
                  max_retries: T.nilable(Integer),
                  merge_reasoning_content_in_choices: T.nilable(T::Boolean),
                  model: T.nilable(String),
                  model_info: T.nilable(T.anything),
                  organization: T.nilable(String),
                  output_cost_per_second: T.nilable(Float),
                  output_cost_per_token: T.nilable(Float),
                  region_name: T.nilable(String),
                  rpm: T.nilable(Integer),
                  stream_timeout: T.nilable(T.any(Float, String)),
                  timeout: T.nilable(T.any(Float, String)),
                  tpm: T.nilable(Integer),
                  use_in_pass_through: T.nilable(T::Boolean),
                  vertex_credentials: T.nilable(T.any(T.anything, String)),
                  vertex_location: T.nilable(String),
                  vertex_project: T.nilable(String),
                  watsonx_region_name: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          module ConfigurableClientsideAuthParam
            extend Hanzoai::Union

            sig { override.returns([String, Hanzoai::Models::ConfigurableClientsideParamsCustomAuth]) }
            def self.variants
            end
          end

          module StreamTimeout
            extend Hanzoai::Union

            sig { override.returns([Float, String]) }
            def self.variants
            end
          end

          module Timeout
            extend Hanzoai::Union

            sig { override.returns([Float, String]) }
            def self.variants
            end
          end

          module VertexCredentials
            extend Hanzoai::Union

            sig { override.returns([T.anything, String]) }
            def self.variants
            end
          end
        end
      end
    end
  end
end
