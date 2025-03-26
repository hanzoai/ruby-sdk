# typed: strong

module HanzoAI
  module Models
    class CustomerCreateParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(String)) }
      attr_accessor :alias_

      sig { returns(T.nilable(HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::OrSymbol)) }
      attr_accessor :allowed_model_region

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :blocked

      sig { params(blocked: T::Boolean).void }
      attr_writer :blocked

      # Max duration budget should be set for (e.g. '1hr', '1d', '28d')
      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_id

      sig { returns(T.nilable(String)) }
      attr_accessor :default_model

      # Requests will fail if this budget (in USD) is exceeded.
      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      # Max concurrent requests allowed for this budget id.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_parallel_requests

      # Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
      #   'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
      sig { returns(T.nilable(T::Hash[Symbol, HanzoAI::Models::CustomerCreateParams::ModelMaxBudget])) }
      attr_accessor :model_max_budget

      # Max requests per minute, allowed for this budget id.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      # Requests will NOT fail if this is exceeded. Will fire alerting though.
      sig { returns(T.nilable(Float)) }
      attr_accessor :soft_budget

      # Max tokens per minute, allowed for this budget id.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig do
        params(
          user_id: String,
          alias_: T.nilable(String),
          allowed_model_region: T.nilable(HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::OrSymbol),
          blocked: T::Boolean,
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          default_model: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          model_max_budget: T.nilable(
            T::Hash[Symbol, T.any(HanzoAI::Models::CustomerCreateParams::ModelMaxBudget, HanzoAI::Util::AnyHash)]
          ),
          rpm_limit: T.nilable(Integer),
          soft_budget: T.nilable(Float),
          tpm_limit: T.nilable(Integer),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        user_id:,
        alias_: nil,
        allowed_model_region: nil,
        blocked: nil,
        budget_duration: nil,
        budget_id: nil,
        default_model: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        model_max_budget: nil,
        rpm_limit: nil,
        soft_budget: nil,
        tpm_limit: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              user_id: String,
              alias_: T.nilable(String),
              allowed_model_region: T.nilable(HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::OrSymbol),
              blocked: T::Boolean,
              budget_duration: T.nilable(String),
              budget_id: T.nilable(String),
              default_model: T.nilable(String),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              model_max_budget: T.nilable(T::Hash[Symbol, HanzoAI::Models::CustomerCreateParams::ModelMaxBudget]),
              rpm_limit: T.nilable(Integer),
              soft_budget: T.nilable(Float),
              tpm_limit: T.nilable(Integer),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      module AllowedModelRegion
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::CustomerCreateParams::AllowedModelRegion) }
        OrSymbol =
          T.type_alias { T.any(Symbol, HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::TaggedSymbol) }

        EU = T.let(:eu, HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::TaggedSymbol)
        US = T.let(:us, HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::CustomerCreateParams::AllowedModelRegion::TaggedSymbol]) }
        def self.values
        end
      end

      class ModelMaxBudget < HanzoAI::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_duration

        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rpm_limit

        sig { returns(T.nilable(Integer)) }
        attr_accessor :tpm_limit

        sig do
          params(
            budget_duration: T.nilable(String),
            max_budget: T.nilable(Float),
            rpm_limit: T.nilable(Integer),
            tpm_limit: T.nilable(Integer)
          )
            .returns(T.attached_class)
        end
        def self.new(budget_duration: nil, max_budget: nil, rpm_limit: nil, tpm_limit: nil)
        end

        sig do
          override
            .returns(
              {
                budget_duration: T.nilable(String),
                max_budget: T.nilable(Float),
                rpm_limit: T.nilable(Integer),
                tpm_limit: T.nilable(Integer)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
