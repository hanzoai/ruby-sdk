# typed: strong

module Hanzoai
  module Models
    class KeyCheckHealthResponse < Hanzoai::BaseModel
      sig { returns(T.nilable(Hanzoai::Models::KeyCheckHealthResponse::Key::TaggedSymbol)) }
      attr_reader :key

      sig { params(key: Hanzoai::Models::KeyCheckHealthResponse::Key::OrSymbol).void }
      attr_writer :key

      sig { returns(T.nilable(Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks)) }
      attr_reader :logging_callbacks

      sig do
        params(
          logging_callbacks: T.nilable(T.any(Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks, Hanzoai::Util::AnyHash))
        )
          .void
      end
      attr_writer :logging_callbacks

      sig do
        params(
          key: Hanzoai::Models::KeyCheckHealthResponse::Key::OrSymbol,
          logging_callbacks: T.nilable(T.any(Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks, Hanzoai::Util::AnyHash))
        )
          .returns(T.attached_class)
      end
      def self.new(key: nil, logging_callbacks: nil)
      end

      sig do
        override
          .returns(
            {
              key: Hanzoai::Models::KeyCheckHealthResponse::Key::TaggedSymbol,
              logging_callbacks: T.nilable(Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks)
            }
          )
      end
      def to_hash
      end

      module Key
        extend Hanzoai::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Hanzoai::Models::KeyCheckHealthResponse::Key) }
        OrSymbol = T.type_alias { T.any(Symbol, Hanzoai::Models::KeyCheckHealthResponse::Key::TaggedSymbol) }

        HEALTHY = T.let(:healthy, Hanzoai::Models::KeyCheckHealthResponse::Key::TaggedSymbol)
        UNHEALTHY = T.let(:unhealthy, Hanzoai::Models::KeyCheckHealthResponse::Key::TaggedSymbol)

        sig { override.returns(T::Array[Hanzoai::Models::KeyCheckHealthResponse::Key::TaggedSymbol]) }
        def self.values
        end
      end

      class LoggingCallbacks < Hanzoai::BaseModel
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :callbacks

        sig { params(callbacks: T::Array[String]).void }
        attr_writer :callbacks

        sig { returns(T.nilable(String)) }
        attr_accessor :details

        sig { returns(T.nilable(Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            callbacks: T::Array[String],
            details: T.nilable(String),
            status: Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(callbacks: nil, details: nil, status: nil)
        end

        sig do
          override
            .returns(
              {
                callbacks: T::Array[String],
                details: T.nilable(String),
                status: Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        module Status
          extend Hanzoai::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol) }

          HEALTHY =
            T.let(:healthy, Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol)
          UNHEALTHY =
            T.let(:unhealthy, Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol)

          sig do
            override.returns(T::Array[Hanzoai::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
