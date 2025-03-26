# typed: strong

module HanzoAI
  module Models
    class OrganizationCreateResponse < HanzoAI::BaseModel
      sig { returns(String) }
      attr_accessor :budget_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :created_by

      sig { returns(T::Array[String]) }
      attr_accessor :models

      sig { returns(String) }
      attr_accessor :organization_id

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :updated_by

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_alias

      sig { returns(T.nilable(Float)) }
      attr_reader :spend

      sig { params(spend: Float).void }
      attr_writer :spend

      sig do
        params(
          budget_id: String,
          created_at: Time,
          created_by: String,
          models: T::Array[String],
          organization_id: String,
          updated_at: Time,
          updated_by: String,
          metadata: T.nilable(T.anything),
          organization_alias: T.nilable(String),
          spend: Float
        )
          .returns(T.attached_class)
      end
      def self.new(
        budget_id:,
        created_at:,
        created_by:,
        models:,
        organization_id:,
        updated_at:,
        updated_by:,
        metadata: nil,
        organization_alias: nil,
        spend: nil
      )
      end

      sig do
        override
          .returns(
            {
              budget_id: String,
              created_at: Time,
              created_by: String,
              models: T::Array[String],
              organization_id: String,
              updated_at: Time,
              updated_by: String,
              metadata: T.nilable(T.anything),
              organization_alias: T.nilable(String),
              spend: Float
            }
          )
      end
      def to_hash
      end
    end
  end
end
