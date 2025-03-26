# typed: strong

module Hanzoai
  module Models
    class GuardrailListResponse < Hanzoai::BaseModel
      sig { returns(T::Array[Hanzoai::Models::GuardrailListResponse::Guardrail]) }
      attr_accessor :guardrails

      sig do
        params(
          guardrails: T::Array[T.any(Hanzoai::Models::GuardrailListResponse::Guardrail, Hanzoai::Util::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(guardrails:)
      end

      sig { override.returns({guardrails: T::Array[Hanzoai::Models::GuardrailListResponse::Guardrail]}) }
      def to_hash
      end

      class Guardrail < Hanzoai::BaseModel
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :guardrail_info

        sig { returns(String) }
        attr_accessor :guardrail_name

        # The returned LLM Params object for /guardrails/list
        sig { returns(Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams) }
        attr_reader :llm_params

        sig do
          params(
            llm_params: T.any(Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams, Hanzoai::Util::AnyHash)
          )
            .void
        end
        attr_writer :llm_params

        sig do
          params(
            guardrail_info: T.nilable(T.anything),
            guardrail_name: String,
            llm_params: T.any(Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(guardrail_info:, guardrail_name:, llm_params:)
        end

        sig do
          override
            .returns(
              {
                guardrail_info: T.nilable(T.anything),
                guardrail_name: String,
                llm_params: Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams
              }
            )
        end
        def to_hash
        end

        class LlmParams < Hanzoai::BaseModel
          sig { returns(String) }
          attr_accessor :guardrail

          sig { returns(T.any(String, T::Array[String])) }
          attr_accessor :mode

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :default_on

          sig { params(default_on: T::Boolean).void }
          attr_writer :default_on

          # The returned LLM Params object for /guardrails/list
          sig do
            params(guardrail: String, mode: T.any(String, T::Array[String]), default_on: T::Boolean)
              .returns(T.attached_class)
          end
          def self.new(guardrail:, mode:, default_on: nil)
          end

          sig do
            override.returns(
              {
                guardrail: String,
                mode: T.any(String, T::Array[String]),
                default_on: T::Boolean
              }
            )
          end
          def to_hash
          end

          module Mode
            extend Hanzoai::Union

            StringArray = T.let(Hanzoai::ArrayOf[String], Hanzoai::Converter)

            sig { override.returns([String, T::Array[String]]) }
            def self.variants
            end
          end
        end
      end
    end
  end
end
