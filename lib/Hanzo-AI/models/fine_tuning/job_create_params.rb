# frozen_string_literal: true

module HanzoAI
  module Models
    module FineTuning
      class JobCreateParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute custom_llm_provider
        #
        #   @return [Symbol, HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider]
        required :custom_llm_provider,
                 enum: -> { HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider }

        # @!attribute model
        #
        #   @return [String]
        required :model, String

        # @!attribute training_file
        #
        #   @return [String]
        required :training_file, String

        # @!attribute hyperparameters
        #
        #   @return [HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters, nil]
        optional :hyperparameters,
                 -> { HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters },
                 nil?: true

        # @!attribute integrations
        #
        #   @return [Array<String>, nil]
        optional :integrations, HanzoAI::ArrayOf[String], nil?: true

        # @!attribute seed
        #
        #   @return [Integer, nil]
        optional :seed, Integer, nil?: true

        # @!attribute suffix
        #
        #   @return [String, nil]
        optional :suffix, String, nil?: true

        # @!attribute validation_file
        #
        #   @return [String, nil]
        optional :validation_file, String, nil?: true

        # @!parse
        #   # @param custom_llm_provider [Symbol, HanzoAI::Models::FineTuning::JobCreateParams::CustomLlmProvider]
        #   # @param model [String]
        #   # @param training_file [String]
        #   # @param hyperparameters [HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters, nil]
        #   # @param integrations [Array<String>, nil]
        #   # @param seed [Integer, nil]
        #   # @param suffix [String, nil]
        #   # @param validation_file [String, nil]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     custom_llm_provider:,
        #     model:,
        #     training_file:,
        #     hyperparameters: nil,
        #     integrations: nil,
        #     seed: nil,
        #     suffix: nil,
        #     validation_file: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        module CustomLlmProvider
          extend HanzoAI::Enum

          OPENAI = :openai
          AZURE = :azure
          VERTEX_AI = :vertex_ai

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class Hyperparameters < HanzoAI::BaseModel
          # @!attribute batch_size
          #
          #   @return [String, Integer, nil]
          optional :batch_size,
                   union: -> { HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters::BatchSize },
                   nil?: true

          # @!attribute learning_rate_multiplier
          #
          #   @return [String, Float, nil]
          optional :learning_rate_multiplier,
                   union: -> { HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters::LearningRateMultiplier },
                   nil?: true

          # @!attribute n_epochs
          #
          #   @return [String, Integer, nil]
          optional :n_epochs,
                   union: -> { HanzoAI::Models::FineTuning::JobCreateParams::Hyperparameters::NEpochs },
                   nil?: true

          # @!parse
          #   # @param batch_size [String, Integer, nil]
          #   # @param learning_rate_multiplier [String, Float, nil]
          #   # @param n_epochs [String, Integer, nil]
          #   #
          #   def initialize(batch_size: nil, learning_rate_multiplier: nil, n_epochs: nil, **) = super

          # def initialize: (Hash | HanzoAI::BaseModel) -> void

          module BatchSize
            extend HanzoAI::Union

            variant String

            variant Integer

            # @!parse
            #   # @return [Array(String, Integer)]
            #   def self.variants; end
          end

          module LearningRateMultiplier
            extend HanzoAI::Union

            variant String

            variant Float

            # @!parse
            #   # @return [Array(String, Float)]
            #   def self.variants; end
          end

          module NEpochs
            extend HanzoAI::Union

            variant String

            variant Integer

            # @!parse
            #   # @return [Array(String, Integer)]
            #   def self.variants; end
          end
        end
      end
    end
  end
end
