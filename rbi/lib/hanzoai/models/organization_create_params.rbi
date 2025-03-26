# typed: strong

module Hanzoai
  module Models
    class OrganizationCreateParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :organization_alias

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_duration

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_parallel_requests

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :model_max_budget

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :models

      sig { params(models: T::Array[T.anything]).void }
      attr_writer :models

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rpm_limit

      sig { returns(T.nilable(Float)) }
      attr_accessor :soft_budget

      sig { returns(T.nilable(Integer)) }
      attr_accessor :tpm_limit

      sig do
        params(
          organization_alias: String,
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          metadata: T.nilable(T.anything),
          model_max_budget: T.nilable(T.anything),
          models: T::Array[T.anything],
          organization_id: T.nilable(String),
          rpm_limit: T.nilable(Integer),
          soft_budget: T.nilable(Float),
          tpm_limit: T.nilable(Integer),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        organization_alias:,
        budget_duration: nil,
        budget_id: nil,
        max_budget: nil,
        max_parallel_requests: nil,
        metadata: nil,
        model_max_budget: nil,
        models: nil,
        organization_id: nil,
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
              organization_alias: String,
              budget_duration: T.nilable(String),
              budget_id: T.nilable(String),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              metadata: T.nilable(T.anything),
              model_max_budget: T.nilable(T.anything),
              models: T::Array[T.anything],
              organization_id: T.nilable(String),
              rpm_limit: T.nilable(Integer),
              soft_budget: T.nilable(Float),
              tpm_limit: T.nilable(Integer),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
