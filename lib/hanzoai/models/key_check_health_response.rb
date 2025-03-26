# frozen_string_literal: true

module Hanzoai
  module Models
    class KeyCheckHealthResponse < Hanzoai::BaseModel
      # @!attribute [r] key
      #
      #   @return [Symbol, Hanzoai::Models::KeyCheckHealthResponse::Key, nil]
      optional :key, enum: -> { Hanzoai::Models::KeyCheckHealthResponse::Key }

      # @!parse
      #   # @return [Symbol, Hanzoai::Models::KeyCheckHealthResponse::Key]
      #   attr_writer :key

      # @!attribute logging_callbacks
      #
      #   @return [Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks, nil]
      optional :logging_callbacks, -> { Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks }, nil?: true

      # @!parse
      #   # @param key [Symbol, Hanzoai::Models::KeyCheckHealthResponse::Key]
      #   # @param logging_callbacks [Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks, nil]
      #   #
      #   def initialize(key: nil, logging_callbacks: nil, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module Key
        extend Hanzoai::Enum

        HEALTHY = :healthy
        UNHEALTHY = :unhealthy

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class LoggingCallbacks < Hanzoai::BaseModel
        # @!attribute [r] callbacks
        #
        #   @return [Array<String>, nil]
        optional :callbacks, Hanzoai::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :callbacks

        # @!attribute details
        #
        #   @return [String, nil]
        optional :details, String, nil?: true

        # @!attribute [r] status
        #
        #   @return [Symbol, Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status, nil]
        optional :status, enum: -> { Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status }

        # @!parse
        #   # @return [Symbol, Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status]
        #   attr_writer :status

        # @!parse
        #   # @param callbacks [Array<String>]
        #   # @param details [String, nil]
        #   # @param status [Symbol, Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status]
        #   #
        #   def initialize(callbacks: nil, details: nil, status: nil, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        module Status
          extend Hanzoai::Enum

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
