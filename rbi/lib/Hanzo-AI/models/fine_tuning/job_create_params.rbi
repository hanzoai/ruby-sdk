# typed: strong

module HanzoAI
  module Models
    module FineTuning
      class JobCreateParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::OrSymbol) }
        attr_accessor :custom_llm_provider

        sig { returns(String) }
        attr_accessor :model

        sig { returns(String) }
        attr_accessor :training_file

        sig { returns(T.nilable(HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters)) }
        attr_reader :hyperparameters

        sig do
          params(
            hyperparameters: T.nilable(T.any(HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters, HanzoAI::Util::AnyHash))
          )
            .void
        end
        attr_writer :hyperparameters

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :integrations

        sig { returns(T.nilable(Integer)) }
        attr_accessor :seed

        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig { returns(T.nilable(String)) }
        attr_accessor :validation_file

        sig do
          params(
            custom_llm_provider: HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::OrSymbol,
            model: String,
            training_file: String,
            hyperparameters: T.nilable(T.any(HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters, HanzoAI::Util::AnyHash)),
            integrations: T.nilable(T::Array[String]),
            seed: T.nilable(Integer),
            suffix: T.nilable(String),
            validation_file: T.nilable(String),
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          custom_llm_provider:,
          model:,
          training_file:,
          hyperparameters: nil,
          integrations: nil,
          seed: nil,
          suffix: nil,
          validation_file: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                custom_llm_provider: HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::OrSymbol,
                model: String,
                training_file: String,
                hyperparameters: T.nilable(HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters),
                integrations: T.nilable(T::Array[String]),
                seed: T.nilable(Integer),
                suffix: T.nilable(String),
                validation_file: T.nilable(String),
                request_options: HanzoAI::RequestOptions
              }
            )
        end
        def to_hash
        end

        module CustomLlmProvider
          extend HanzoAI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider) }
          OrSymbol =
            T.type_alias { T.any(Symbol, HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::TaggedSymbol) }

          OPENAI = T.let(:openai, HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::TaggedSymbol)
          AZURE = T.let(:azure, HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::TaggedSymbol)
          VERTEX_AI =
            T.let(:vertex_ai, HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::TaggedSymbol)

          sig { override.returns(T::Array[HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider::TaggedSymbol]) }
          def self.values
          end
        end

        class Hyperparameters < HanzoAI::BaseModel
          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :batch_size

          sig { returns(T.nilable(T.any(String, Float))) }
          attr_accessor :learning_rate_multiplier

          sig { returns(T.nilable(T.any(String, Integer))) }
          attr_accessor :n_epochs

          sig do
            params(
              batch_size: T.nilable(T.any(String, Integer)),
              learning_rate_multiplier: T.nilable(T.any(String, Float)),
              n_epochs: T.nilable(T.any(String, Integer))
            )
              .returns(T.attached_class)
          end
          def self.new(batch_size: nil, learning_rate_multiplier: nil, n_epochs: nil)
          end

          sig do
            override
              .returns(
                {
                  batch_size: T.nilable(T.any(String, Integer)),
                  learning_rate_multiplier: T.nilable(T.any(String, Float)),
                  n_epochs: T.nilable(T.any(String, Integer))
                }
              )
          end
          def to_hash
          end

          module BatchSize
            extend HanzoAI::Union

            sig { override.returns([String, Integer]) }
            def self.variants
            end
          end

          module LearningRateMultiplier
            extend HanzoAI::Union

            sig { override.returns([String, Float]) }
            def self.variants
            end
          end

          module NEpochs
            extend HanzoAI::Union

            sig { override.returns([String, Integer]) }
            def self.variants
            end
          end
        end
      end
    end
  end
end
