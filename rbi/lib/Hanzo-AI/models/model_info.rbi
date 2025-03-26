# typed: strong

module HanzoAI
  module Models
    class ModelInfo < HanzoAI::BaseModel
      sig { returns(T.nilable(String)) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :base_model

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :created_by

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :db_model

      sig { params(db_model: T::Boolean).void }
      attr_writer :db_model

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig { returns(T.nilable(String)) }
      attr_accessor :team_public_model_name

      sig { returns(T.nilable(HanzoAI::Models::ModelInfo::Tier::OrSymbol)) }
      attr_accessor :tier

      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :updated_by

      sig do
        params(
          id: T.nilable(String),
          base_model: T.nilable(String),
          created_at: T.nilable(Time),
          created_by: T.nilable(String),
          db_model: T::Boolean,
          team_id: T.nilable(String),
          team_public_model_name: T.nilable(String),
          tier: T.nilable(HanzoAI::Models::ModelInfo::Tier::OrSymbol),
          updated_at: T.nilable(Time),
          updated_by: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        base_model: nil,
        created_at: nil,
        created_by: nil,
        db_model: nil,
        team_id: nil,
        team_public_model_name: nil,
        tier: nil,
        updated_at: nil,
        updated_by: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: T.nilable(String),
              base_model: T.nilable(String),
              created_at: T.nilable(Time),
              created_by: T.nilable(String),
              db_model: T::Boolean,
              team_id: T.nilable(String),
              team_public_model_name: T.nilable(String),
              tier: T.nilable(HanzoAI::Models::ModelInfo::Tier::OrSymbol),
              updated_at: T.nilable(Time),
              updated_by: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      module Tier
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::ModelInfo::Tier) }
        OrSymbol = T.type_alias { T.any(Symbol, HanzoAI::Models::ModelInfo::Tier::TaggedSymbol) }

        FREE = T.let(:free, HanzoAI::Models::ModelInfo::Tier::TaggedSymbol)
        PAID = T.let(:paid, HanzoAI::Models::ModelInfo::Tier::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::ModelInfo::Tier::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
