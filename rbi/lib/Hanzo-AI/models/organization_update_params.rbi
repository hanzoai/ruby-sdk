# typed: strong

module HanzoAI
  module Models
    class OrganizationUpdateParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_id

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :models

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_alias

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :spend

      sig { returns(T.nilable(String)) }
      attr_accessor :updated_by

      sig do
        params(
          budget_id: T.nilable(String),
          metadata: T.nilable(T.anything),
          models: T.nilable(T::Array[String]),
          organization_alias: T.nilable(String),
          organization_id: T.nilable(String),
          spend: T.nilable(Float),
          updated_by: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        budget_id: nil,
        metadata: nil,
        models: nil,
        organization_alias: nil,
        organization_id: nil,
        spend: nil,
        updated_by: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              budget_id: T.nilable(String),
              metadata: T.nilable(T.anything),
              models: T.nilable(T::Array[String]),
              organization_alias: T.nilable(String),
              organization_id: T.nilable(String),
              spend: T.nilable(Float),
              updated_by: T.nilable(String),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
