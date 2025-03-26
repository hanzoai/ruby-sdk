# typed: strong

module HanzoAI
  module Models
    module Global
      class SpendListTagsParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # Time till which to view key spend
        sig { returns(T.nilable(String)) }
        attr_accessor :end_date

        # Time from which to start viewing key spend
        sig { returns(T.nilable(String)) }
        attr_accessor :start_date

        # comman separated tags to filter on
        sig { returns(T.nilable(String)) }
        attr_accessor :tags

        sig do
          params(
            end_date: T.nilable(String),
            start_date: T.nilable(String),
            tags: T.nilable(String),
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(end_date: nil, start_date: nil, tags: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                end_date: T.nilable(String),
                start_date: T.nilable(String),
                tags: T.nilable(String),
                request_options: HanzoAI::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
