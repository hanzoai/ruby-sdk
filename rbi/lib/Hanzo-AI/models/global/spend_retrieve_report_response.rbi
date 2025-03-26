# typed: strong

module HanzoAI
  module Models
    module Global
      class SpendRetrieveReportResponseItem < HanzoAI::BaseModel
        sig { returns(String) }
        attr_accessor :api_key

        sig { returns(String) }
        attr_accessor :call_type

        sig { returns(T.nilable(T.any(String, Time))) }
        attr_accessor :end_time

        sig { returns(T.nilable(T.any(String, T::Array[T.anything], T.anything))) }
        attr_accessor :messages

        sig { returns(String) }
        attr_accessor :request_id

        sig { returns(T.nilable(T.any(String, T::Array[T.anything], T.anything))) }
        attr_accessor :response

        sig { returns(T.nilable(T.any(String, Time))) }
        attr_accessor :start_time

        sig { returns(T.nilable(String)) }
        attr_accessor :api_base

        sig { returns(T.nilable(String)) }
        attr_accessor :cache_hit

        sig { returns(T.nilable(String)) }
        attr_accessor :cache_key

        sig { returns(T.nilable(Integer)) }
        attr_accessor :completion_tokens

        sig { returns(T.nilable(T.anything)) }
        attr_reader :metadata

        sig { params(metadata: T.anything).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_accessor :model

        sig { returns(T.nilable(Integer)) }
        attr_accessor :prompt_tokens

        sig { returns(T.nilable(T.anything)) }
        attr_reader :request_tags

        sig { params(request_tags: T.anything).void }
        attr_writer :request_tags

        sig { returns(T.nilable(String)) }
        attr_accessor :requester_ip_address

        sig { returns(T.nilable(Float)) }
        attr_accessor :spend

        sig { returns(T.nilable(Integer)) }
        attr_accessor :total_tokens

        sig { returns(T.nilable(String)) }
        attr_accessor :user

        sig do
          params(
            api_key: String,
            call_type: String,
            end_time: T.nilable(T.any(String, Time)),
            messages: T.nilable(T.any(String, T::Array[T.anything], T.anything)),
            request_id: String,
            response: T.nilable(T.any(String, T::Array[T.anything], T.anything)),
            start_time: T.nilable(T.any(String, Time)),
            api_base: T.nilable(String),
            cache_hit: T.nilable(String),
            cache_key: T.nilable(String),
            completion_tokens: T.nilable(Integer),
            metadata: T.anything,
            model: T.nilable(String),
            prompt_tokens: T.nilable(Integer),
            request_tags: T.anything,
            requester_ip_address: T.nilable(String),
            spend: T.nilable(Float),
            total_tokens: T.nilable(Integer),
            user: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          api_key:,
          call_type:,
          end_time:,
          messages:,
          request_id:,
          response:,
          start_time:,
          api_base: nil,
          cache_hit: nil,
          cache_key: nil,
          completion_tokens: nil,
          metadata: nil,
          model: nil,
          prompt_tokens: nil,
          request_tags: nil,
          requester_ip_address: nil,
          spend: nil,
          total_tokens: nil,
          user: nil
        )
        end

        sig do
          override
            .returns(
              {
                api_key: String,
                call_type: String,
                end_time: T.nilable(T.any(String, Time)),
                messages: T.nilable(T.any(String, T::Array[T.anything], T.anything)),
                request_id: String,
                response: T.nilable(T.any(String, T::Array[T.anything], T.anything)),
                start_time: T.nilable(T.any(String, Time)),
                api_base: T.nilable(String),
                cache_hit: T.nilable(String),
                cache_key: T.nilable(String),
                completion_tokens: T.nilable(Integer),
                metadata: T.anything,
                model: T.nilable(String),
                prompt_tokens: T.nilable(Integer),
                request_tags: T.anything,
                requester_ip_address: T.nilable(String),
                spend: T.nilable(Float),
                total_tokens: T.nilable(Integer),
                user: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        module EndTime
          extend HanzoAI::Union

          sig { override.returns([String, Time]) }
          def self.variants
          end
        end

        module Messages
          extend HanzoAI::Union

          UnionMember1Array = T.let(HanzoAI::ArrayOf[HanzoAI::Unknown], HanzoAI::Converter)

          sig { override.returns([String, T::Array[T.anything], T.anything]) }
          def self.variants
          end
        end

        module Response
          extend HanzoAI::Union

          UnionMember1Array = T.let(HanzoAI::ArrayOf[HanzoAI::Unknown], HanzoAI::Converter)

          sig { override.returns([String, T::Array[T.anything], T.anything]) }
          def self.variants
          end
        end

        module StartTime
          extend HanzoAI::Union

          sig { override.returns([String, Time]) }
          def self.variants
          end
        end
      end

      SpendRetrieveReportResponse =
        T.let(HanzoAI::ArrayOf[HanzoAI::Models::Global::SpendRetrieveReportResponseItem], HanzoAI::Converter)
    end
  end
end
