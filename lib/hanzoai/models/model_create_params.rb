# frozen_string_literal: true

module Hanzoai
  module Models
    class ModelCreateParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute llm_params
      #   LLM Params with 'model' requirement - used for completions
      #
      #   @return [Hanzoai::Models::ModelCreateParams::LlmParams]
      required :llm_params, -> { Hanzoai::Models::ModelCreateParams::LlmParams }

      # @!attribute model_info
      #
      #   @return [Hanzoai::Models::ModelInfo]
      required :model_info, -> { Hanzoai::Models::ModelInfo }

      # @!attribute model_name
      #
      #   @return [String]
      required :model_name, String

      # @!parse
      #   # @param llm_params [Hanzoai::Models::ModelCreateParams::LlmParams]
      #   # @param model_info [Hanzoai::Models::ModelInfo]
      #   # @param model_name [String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(llm_params:, model_info:, model_name:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      class LlmParams < Hanzoai::BaseModel
        # @!attribute model
        #
        #   @return [String]
        required :model, String

        # @!attribute api_base
        #
        #   @return [String, nil]
        optional :api_base, String, nil?: true

        # @!attribute api_key
        #
        #   @return [String, nil]
        optional :api_key, String, nil?: true

        # @!attribute api_version
        #
        #   @return [String, nil]
        optional :api_version, String, nil?: true

        # @!attribute aws_access_key_id
        #
        #   @return [String, nil]
        optional :aws_access_key_id, String, nil?: true

        # @!attribute aws_region_name
        #
        #   @return [String, nil]
        optional :aws_region_name, String, nil?: true

        # @!attribute aws_secret_access_key
        #
        #   @return [String, nil]
        optional :aws_secret_access_key, String, nil?: true

        # @!attribute budget_duration
        #
        #   @return [String, nil]
        optional :budget_duration, String, nil?: true

        # @!attribute configurable_clientside_auth_params
        #
        #   @return [Array<String, Hanzoai::Models::ConfigurableClientsideParamsCustomAuth>, nil]
        optional :configurable_clientside_auth_params,
                 -> { Hanzoai::ArrayOf[union: Hanzoai::Models::ModelCreateParams::LlmParams::ConfigurableClientsideAuthParam] },
                 nil?: true

        # @!attribute custom_llm_provider
        #
        #   @return [String, nil]
        optional :custom_llm_provider, String, nil?: true

        # @!attribute input_cost_per_second
        #
        #   @return [Float, nil]
        optional :input_cost_per_second, Float, nil?: true

        # @!attribute input_cost_per_token
        #
        #   @return [Float, nil]
        optional :input_cost_per_token, Float, nil?: true

        # @!attribute llm_trace_id
        #
        #   @return [String, nil]
        optional :llm_trace_id, String, nil?: true

        # @!attribute max_budget
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute max_file_size_mb
        #
        #   @return [Float, nil]
        optional :max_file_size_mb, Float, nil?: true

        # @!attribute max_retries
        #
        #   @return [Integer, nil]
        optional :max_retries, Integer, nil?: true

        # @!attribute merge_reasoning_content_in_choices
        #
        #   @return [Boolean, nil]
        optional :merge_reasoning_content_in_choices, Hanzoai::BooleanModel, nil?: true

        # @!attribute model_info
        #
        #   @return [Object, nil]
        optional :model_info, Hanzoai::Unknown, nil?: true

        # @!attribute organization
        #
        #   @return [String, nil]
        optional :organization, String, nil?: true

        # @!attribute output_cost_per_second
        #
        #   @return [Float, nil]
        optional :output_cost_per_second, Float, nil?: true

        # @!attribute output_cost_per_token
        #
        #   @return [Float, nil]
        optional :output_cost_per_token, Float, nil?: true

        # @!attribute region_name
        #
        #   @return [String, nil]
        optional :region_name, String, nil?: true

        # @!attribute rpm
        #
        #   @return [Integer, nil]
        optional :rpm, Integer, nil?: true

        # @!attribute stream_timeout
        #
        #   @return [Float, String, nil]
        optional :stream_timeout,
                 union: -> { Hanzoai::Models::ModelCreateParams::LlmParams::StreamTimeout },
                 nil?: true

        # @!attribute timeout
        #
        #   @return [Float, String, nil]
        optional :timeout, union: -> { Hanzoai::Models::ModelCreateParams::LlmParams::Timeout }, nil?: true

        # @!attribute tpm
        #
        #   @return [Integer, nil]
        optional :tpm, Integer, nil?: true

        # @!attribute use_in_pass_through
        #
        #   @return [Boolean, nil]
        optional :use_in_pass_through, Hanzoai::BooleanModel, nil?: true

        # @!attribute vertex_credentials
        #
        #   @return [Object, String, nil]
        optional :vertex_credentials,
                 union: -> { Hanzoai::Models::ModelCreateParams::LlmParams::VertexCredentials },
                 nil?: true

        # @!attribute vertex_location
        #
        #   @return [String, nil]
        optional :vertex_location, String, nil?: true

        # @!attribute vertex_project
        #
        #   @return [String, nil]
        optional :vertex_project, String, nil?: true

        # @!attribute watsonx_region_name
        #
        #   @return [String, nil]
        optional :watsonx_region_name, String, nil?: true

        # @!parse
        #   # LLM Params with 'model' requirement - used for completions
        #   #
        #   # @param model [String]
        #   # @param api_base [String, nil]
        #   # @param api_key [String, nil]
        #   # @param api_version [String, nil]
        #   # @param aws_access_key_id [String, nil]
        #   # @param aws_region_name [String, nil]
        #   # @param aws_secret_access_key [String, nil]
        #   # @param budget_duration [String, nil]
        #   # @param configurable_clientside_auth_params [Array<String, Hanzoai::Models::ConfigurableClientsideParamsCustomAuth>, nil]
        #   # @param custom_llm_provider [String, nil]
        #   # @param input_cost_per_second [Float, nil]
        #   # @param input_cost_per_token [Float, nil]
        #   # @param llm_trace_id [String, nil]
        #   # @param max_budget [Float, nil]
        #   # @param max_file_size_mb [Float, nil]
        #   # @param max_retries [Integer, nil]
        #   # @param merge_reasoning_content_in_choices [Boolean, nil]
        #   # @param model_info [Object, nil]
        #   # @param organization [String, nil]
        #   # @param output_cost_per_second [Float, nil]
        #   # @param output_cost_per_token [Float, nil]
        #   # @param region_name [String, nil]
        #   # @param rpm [Integer, nil]
        #   # @param stream_timeout [Float, String, nil]
        #   # @param timeout [Float, String, nil]
        #   # @param tpm [Integer, nil]
        #   # @param use_in_pass_through [Boolean, nil]
        #   # @param vertex_credentials [Object, String, nil]
        #   # @param vertex_location [String, nil]
        #   # @param vertex_project [String, nil]
        #   # @param watsonx_region_name [String, nil]
        #   #
        #   def initialize(
        #     model:,
        #     api_base: nil,
        #     api_key: nil,
        #     api_version: nil,
        #     aws_access_key_id: nil,
        #     aws_region_name: nil,
        #     aws_secret_access_key: nil,
        #     budget_duration: nil,
        #     configurable_clientside_auth_params: nil,
        #     custom_llm_provider: nil,
        #     input_cost_per_second: nil,
        #     input_cost_per_token: nil,
        #     llm_trace_id: nil,
        #     max_budget: nil,
        #     max_file_size_mb: nil,
        #     max_retries: nil,
        #     merge_reasoning_content_in_choices: nil,
        #     model_info: nil,
        #     organization: nil,
        #     output_cost_per_second: nil,
        #     output_cost_per_token: nil,
        #     region_name: nil,
        #     rpm: nil,
        #     stream_timeout: nil,
        #     timeout: nil,
        #     tpm: nil,
        #     use_in_pass_through: nil,
        #     vertex_credentials: nil,
        #     vertex_location: nil,
        #     vertex_project: nil,
        #     watsonx_region_name: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        module ConfigurableClientsideAuthParam
          extend Hanzoai::Union

          variant String

          variant -> { Hanzoai::Models::ConfigurableClientsideParamsCustomAuth }

          # @!parse
          #   # @return [Array(String, Hanzoai::Models::ConfigurableClientsideParamsCustomAuth)]
          #   def self.variants; end
        end

        module StreamTimeout
          extend Hanzoai::Union

          variant Float

          variant String

          # @!parse
          #   # @return [Array(Float, String)]
          #   def self.variants; end
        end

        module Timeout
          extend Hanzoai::Union

          variant Float

          variant String

          # @!parse
          #   # @return [Array(Float, String)]
          #   def self.variants; end
        end

        module VertexCredentials
          extend Hanzoai::Union

          variant Hanzoai::Unknown

          variant String

          # @!parse
          #   # @return [Array(Object, String)]
          #   def self.variants; end
        end
      end
    end
  end
end
