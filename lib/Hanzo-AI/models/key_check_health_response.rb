# frozen_string_literal: true

module HanzoAI
  module Models
    class KeyCheckHealthResponse < HanzoAI::BaseModel
      # @!attribute [r] key
      #
      #   @return [Symbol, HanzoAI::Models::KeyCheckHealthResponse::Key, nil]
      optional :key, enum: -> { HanzoAI::Models::KeyCheckHealthResponse::Key }

      # @!parse
      #   # @return [Symbol, HanzoAI::Models::KeyCheckHealthResponse::Key]
      #   attr_writer :key

      # @!attribute logging_callbacks
      #
      #   @return [HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks, nil]
      optional :logging_callbacks, -> { HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks }, nil?: true

      # @!parse
      #   # @param key [Symbol, HanzoAI::Models::KeyCheckHealthResponse::Key]
      #   # @param logging_callbacks [HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks, nil]
      #   #
      #   def initialize(key: nil, logging_callbacks: nil, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module Key
        extend HanzoAI::Enum

        HEALTHY = :healthy
        UNHEALTHY = :unhealthy

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class LoggingCallbacks < HanzoAI::BaseModel
        # @!attribute [r] callbacks
        #
        #   @return [Array<String>, nil]
        optional :callbacks, HanzoAI::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :callbacks

        # @!attribute details
        #
        #   @return [String, nil]
        optional :details, String, nil?: true

        # @!attribute [r] status
        #
        #   @return [Symbol, HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status, nil]
        optional :status, enum: -> { HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status }

        # @!parse
        #   # @return [Symbol, HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status]
        #   attr_writer :status

        # @!parse
        #   # @param callbacks [Array<String>]
        #   # @param details [String, nil]
        #   # @param status [Symbol, HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status]
        #   #
        #   def initialize(callbacks: nil, details: nil, status: nil, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        module Status
          extend HanzoAI::Enum

          HEALTHY = :healthy
          UNHEALTHY = :unhealthy

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
