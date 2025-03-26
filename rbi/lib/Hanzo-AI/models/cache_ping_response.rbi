# typed: strong

module HanzoAI
  module Models
    class CachePingResponse < HanzoAI::BaseModel
      sig { returns(String) }
      attr_accessor :cache_type

      sig { returns(String) }
      attr_accessor :status

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :health_check_cache_params

      sig { returns(T.nilable(String)) }
      attr_accessor :llm_cache_params

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :ping_response

      sig { returns(T.nilable(String)) }
      attr_accessor :set_cache_response

      sig do
        params(
          cache_type: String,
          status: String,
          health_check_cache_params: T.nilable(T.anything),
          llm_cache_params: T.nilable(String),
          ping_response: T.nilable(T::Boolean),
          set_cache_response: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        cache_type:,
        status:,
        health_check_cache_params: nil,
        llm_cache_params: nil,
        ping_response: nil,
        set_cache_response: nil
      )
      end

      sig do
        override
          .returns(
            {
              cache_type: String,
              status: String,
              health_check_cache_params: T.nilable(T.anything),
              llm_cache_params: T.nilable(String),
              ping_response: T.nilable(T::Boolean),
              set_cache_response: T.nilable(String)
            }
          )
      end
      def to_hash
      end
    end
  end
end
