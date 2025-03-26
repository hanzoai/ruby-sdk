# frozen_string_literal: true

module HanzoAI
  module Models
    module Global
      class SpendListTagsResponseItem < HanzoAI::BaseModel
        # @!attribute api_key
        #
        #   @return [String]
        required :api_key, String

        # @!attribute call_type
        #
        #   @return [String]
        required :call_type, String

        # @!attribute end_time
        #
        #   @return [String, Time, nil]
        required :end_time,
                 union: -> { HanzoAI::Models::Global::SpendListTagsResponseItem::EndTime },
                 api_name: :endTime,
                 nil?: true

        # @!attribute messages
        #
        #   @return [String, Array<Object>, Object, nil]
        required :messages, union: -> { HanzoAI::Models::Global::SpendListTagsResponseItem::Messages }, nil?: true

        # @!attribute request_id
        #
        #   @return [String]
        required :request_id, String

        # @!attribute response
        #
        #   @return [String, Array<Object>, Object, nil]
        required :response, union: -> { HanzoAI::Models::Global::SpendListTagsResponseItem::Response }, nil?: true

        # @!attribute start_time
        #
        #   @return [String, Time, nil]
        required :start_time,
                 union: -> { HanzoAI::Models::Global::SpendListTagsResponseItem::StartTime },
                 api_name: :startTime,
                 nil?: true

        # @!attribute api_base
        #
        #   @return [String, nil]
        optional :api_base, String, nil?: true

        # @!attribute cache_hit
        #
        #   @return [String, nil]
        optional :cache_hit, String, nil?: true

        # @!attribute cache_key
        #
        #   @return [String, nil]
        optional :cache_key, String, nil?: true

        # @!attribute completion_tokens
        #
        #   @return [Integer, nil]
        optional :completion_tokens, Integer, nil?: true

        # @!attribute [r] metadata
        #
        #   @return [Object, nil]
        optional :metadata, HanzoAI::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :metadata

        # @!attribute model
        #
        #   @return [String, nil]
        optional :model, String, nil?: true

        # @!attribute prompt_tokens
        #
        #   @return [Integer, nil]
        optional :prompt_tokens, Integer, nil?: true

        # @!attribute [r] request_tags
        #
        #   @return [Object, nil]
        optional :request_tags, HanzoAI::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :request_tags

        # @!attribute requester_ip_address
        #
        #   @return [String, nil]
        optional :requester_ip_address, String, nil?: true

        # @!attribute spend
        #
        #   @return [Float, nil]
        optional :spend, Float, nil?: true

        # @!attribute total_tokens
        #
        #   @return [Integer, nil]
        optional :total_tokens, Integer, nil?: true

        # @!attribute user
        #
        #   @return [String, nil]
        optional :user, String, nil?: true

        # @!parse
        #   # @param api_key [String]
        #   # @param call_type [String]
        #   # @param end_time [String, Time, nil]
        #   # @param messages [String, Array<Object>, Object, nil]
        #   # @param request_id [String]
        #   # @param response [String, Array<Object>, Object, nil]
        #   # @param start_time [String, Time, nil]
        #   # @param api_base [String, nil]
        #   # @param cache_hit [String, nil]
        #   # @param cache_key [String, nil]
        #   # @param completion_tokens [Integer, nil]
        #   # @param metadata [Object]
        #   # @param model [String, nil]
        #   # @param prompt_tokens [Integer, nil]
        #   # @param request_tags [Object]
        #   # @param requester_ip_address [String, nil]
        #   # @param spend [Float, nil]
        #   # @param total_tokens [Integer, nil]
        #   # @param user [String, nil]
        #   #
        #   def initialize(
        #     api_key:,
        #     call_type:,
        #     end_time:,
        #     messages:,
        #     request_id:,
        #     response:,
        #     start_time:,
        #     api_base: nil,
        #     cache_hit: nil,
        #     cache_key: nil,
        #     completion_tokens: nil,
        #     metadata: nil,
        #     model: nil,
        #     prompt_tokens: nil,
        #     request_tags: nil,
        #     requester_ip_address: nil,
        #     spend: nil,
        #     total_tokens: nil,
        #     user: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        module EndTime
          extend HanzoAI::Union

          variant String

          variant Time

          # @!parse
          #   # @return [Array(String, Time)]
          #   def self.variants; end
        end

        module Messages
          extend HanzoAI::Union

          UnionMember1Array = HanzoAI::ArrayOf[HanzoAI::Unknown]

          variant String

          variant HanzoAI::Models::Global::SpendListTagsResponseItem::Messages::UnionMember1Array

          variant HanzoAI::Unknown

          # @!parse
          #   # @return [Array(String, Array<Object>, Object)]
          #   def self.variants; end
        end

        module Response
          extend HanzoAI::Union

          UnionMember1Array = HanzoAI::ArrayOf[HanzoAI::Unknown]

          variant String

          variant HanzoAI::Models::Global::SpendListTagsResponseItem::Response::UnionMember1Array

          variant HanzoAI::Unknown

          # @!parse
          #   # @return [Array(String, Array<Object>, Object)]
          #   def self.variants; end
        end

        module StartTime
          extend HanzoAI::Union

          variant String

          variant Time

          # @!parse
          #   # @return [Array(String, Time)]
          #   def self.variants; end
        end
      end

      SpendListTagsResponse = HanzoAI::ArrayOf[-> { HanzoAI::Models::Global::SpendListTagsResponseItem }]
    end
  end
end
