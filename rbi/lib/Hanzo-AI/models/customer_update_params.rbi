# typed: strong

module HanzoAI
  module Models
    class CustomerUpdateParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(String)) }
      attr_accessor :alias_

      sig { returns(T.nilable(HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::OrSymbol)) }
      attr_accessor :allowed_model_region

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :blocked

      sig { params(blocked: T::Boolean).void }
      attr_writer :blocked

      sig { returns(T.nilable(String)) }
      attr_accessor :budget_id

      sig { returns(T.nilable(String)) }
      attr_accessor :default_model

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_budget

      sig do
        params(
          user_id: String,
          alias_: T.nilable(String),
          allowed_model_region: T.nilable(HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::OrSymbol),
          blocked: T::Boolean,
          budget_id: T.nilable(String),
          default_model: T.nilable(String),
          max_budget: T.nilable(Float),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        user_id:,
        alias_: nil,
        allowed_model_region: nil,
        blocked: nil,
        budget_id: nil,
        default_model: nil,
        max_budget: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              user_id: String,
              alias_: T.nilable(String),
              allowed_model_region: T.nilable(HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::OrSymbol),
              blocked: T::Boolean,
              budget_id: T.nilable(String),
              default_model: T.nilable(String),
              max_budget: T.nilable(Float),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      module AllowedModelRegion
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion) }
        OrSymbol =
          T.type_alias { T.any(Symbol, HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::TaggedSymbol) }

        EU = T.let(:eu, HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::TaggedSymbol)
        US = T.let(:us, HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::CustomerUpdateParams::AllowedModelRegion::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
