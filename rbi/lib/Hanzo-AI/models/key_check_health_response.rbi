# typed: strong

module HanzoAI
  module Models
    class KeyCheckHealthResponse < HanzoAI::BaseModel
      sig { returns(T.nilable(HanzoAI::Models::KeyCheckHealthResponse::Key::TaggedSymbol)) }
      attr_reader :key

      sig { params(key: HanzoAI::Models::KeyCheckHealthResponse::Key::OrSymbol).void }
      attr_writer :key

      sig { returns(T.nilable(HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks)) }
      attr_reader :logging_callbacks

      sig do
        params(
          logging_callbacks: T.nilable(T.any(HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks, HanzoAI::Util::AnyHash))
        )
          .void
      end
      attr_writer :logging_callbacks

      sig do
        params(
          key: HanzoAI::Models::KeyCheckHealthResponse::Key::OrSymbol,
          logging_callbacks: T.nilable(T.any(HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks, HanzoAI::Util::AnyHash))
        )
          .returns(T.attached_class)
      end
      def self.new(key: nil, logging_callbacks: nil)
      end

      sig do
        override
          .returns(
            {
              key: HanzoAI::Models::KeyCheckHealthResponse::Key::TaggedSymbol,
              logging_callbacks: T.nilable(HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks)
            }
          )
      end
      def to_hash
      end

      module Key
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::KeyCheckHealthResponse::Key) }
        OrSymbol = T.type_alias { T.any(Symbol, HanzoAI::Models::KeyCheckHealthResponse::Key::TaggedSymbol) }

        HEALTHY = T.let(:healthy, HanzoAI::Models::KeyCheckHealthResponse::Key::TaggedSymbol)
        UNHEALTHY = T.let(:unhealthy, HanzoAI::Models::KeyCheckHealthResponse::Key::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::KeyCheckHealthResponse::Key::TaggedSymbol]) }
        def self.values
        end
      end

      class LoggingCallbacks < HanzoAI::BaseModel
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :callbacks

        sig { params(callbacks: T::Array[String]).void }
        attr_writer :callbacks

        sig { returns(T.nilable(String)) }
        attr_accessor :details

        sig { returns(T.nilable(HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            callbacks: T::Array[String],
            details: T.nilable(String),
            status: HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::OrSymbol
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
                status: HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        module Status
          extend HanzoAI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol) }

          HEALTHY =
            T.let(:healthy, HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol)
          UNHEALTHY =
            T.let(:unhealthy, HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol)

          sig do
            override.returns(T::Array[HanzoAI::Models::KeyCheckHealthResponse::LoggingCallbacks::Status::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
