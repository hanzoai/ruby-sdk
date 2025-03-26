# typed: strong

module HanzoAI
  module Models
    module Team
      class CallbackAddParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(String) }
        attr_accessor :callback_name

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :callback_vars

        sig { returns(T.nilable(HanzoAI::Models::Team::CallbackAddParams::CallbackType::OrSymbol)) }
        attr_accessor :callback_type

        # The llm-changed-by header enables tracking of actions performed by authorized
        #   users on behalf of other users, providing an audit trail for accountability
        sig { returns(T.nilable(String)) }
        attr_reader :llm_changed_by

        sig { params(llm_changed_by: String).void }
        attr_writer :llm_changed_by

        sig do
          params(
            callback_name: String,
            callback_vars: T::Hash[Symbol, String],
            callback_type: T.nilable(HanzoAI::Models::Team::CallbackAddParams::CallbackType::OrSymbol),
            llm_changed_by: String,
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(callback_name:, callback_vars:, callback_type: nil, llm_changed_by: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                callback_name: String,
                callback_vars: T::Hash[Symbol, String],
                callback_type: T.nilable(HanzoAI::Models::Team::CallbackAddParams::CallbackType::OrSymbol),
                llm_changed_by: String,
                request_options: HanzoAI::RequestOptions
              }
            )
        end
        def to_hash
        end

        module CallbackType
          extend HanzoAI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::Team::CallbackAddParams::CallbackType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, HanzoAI::Models::Team::CallbackAddParams::CallbackType::TaggedSymbol) }

          SUCCESS = T.let(:success, HanzoAI::Models::Team::CallbackAddParams::CallbackType::TaggedSymbol)
          FAILURE = T.let(:failure, HanzoAI::Models::Team::CallbackAddParams::CallbackType::TaggedSymbol)
          SUCCESS_AND_FAILURE =
            T.let(:success_and_failure, HanzoAI::Models::Team::CallbackAddParams::CallbackType::TaggedSymbol)

          sig { override.returns(T::Array[HanzoAI::Models::Team::CallbackAddParams::CallbackType::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
