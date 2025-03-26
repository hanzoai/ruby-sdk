# typed: strong

module HanzoAI
  module Models
    module Global
      class SpendRetrieveReportParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # View spend for a specific api_key. Example api_key='sk-1234
        sig { returns(T.nilable(String)) }
        attr_accessor :api_key

        # View spend for a specific customer_id. Example customer_id='1234. Can be used in
        #   conjunction with team_id as well.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # Time till which to view spend
        sig { returns(T.nilable(String)) }
        attr_accessor :end_date

        # Group spend by internal team or customer or api_key
        sig { returns(T.nilable(HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::OrSymbol)) }
        attr_accessor :group_by

        # View spend for a specific internal_user_id. Example internal_user_id='1234
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_user_id

        # Time from which to start viewing spend
        sig { returns(T.nilable(String)) }
        attr_accessor :start_date

        # View spend for a specific team_id. Example team_id='1234
        sig { returns(T.nilable(String)) }
        attr_accessor :team_id

        sig do
          params(
            api_key: T.nilable(String),
            customer_id: T.nilable(String),
            end_date: T.nilable(String),
            group_by: T.nilable(HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::OrSymbol),
            internal_user_id: T.nilable(String),
            start_date: T.nilable(String),
            team_id: T.nilable(String),
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          api_key: nil,
          customer_id: nil,
          end_date: nil,
          group_by: nil,
          internal_user_id: nil,
          start_date: nil,
          team_id: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                api_key: T.nilable(String),
                customer_id: T.nilable(String),
                end_date: T.nilable(String),
                group_by: T.nilable(HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::OrSymbol),
                internal_user_id: T.nilable(String),
                start_date: T.nilable(String),
                team_id: T.nilable(String),
                request_options: HanzoAI::RequestOptions
              }
            )
        end
        def to_hash
        end

        # Group spend by internal team or customer or api_key
        module GroupBy
          extend HanzoAI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy) }
          OrSymbol =
            T.type_alias { T.any(Symbol, HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::TaggedSymbol) }

          TEAM = T.let(:team, HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::TaggedSymbol)
          CUSTOMER = T.let(:customer, HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::TaggedSymbol)
          API_KEY = T.let(:api_key, HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::TaggedSymbol)

          sig { override.returns(T::Array[HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
