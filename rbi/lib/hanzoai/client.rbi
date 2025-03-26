# typed: strong

module Hanzoai
  class Client < Hanzoai::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # The default name of the subscription key header of Azure
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Hanzoai::Resources::Models) }
    attr_reader :models

    sig { returns(Hanzoai::Resources::OpenAI) }
    attr_reader :openai

    sig { returns(Hanzoai::Resources::Engines) }
    attr_reader :engines

    sig { returns(Hanzoai::Resources::Chat) }
    attr_reader :chat

    sig { returns(Hanzoai::Resources::Completions) }
    attr_reader :completions

    sig { returns(Hanzoai::Resources::Embeddings) }
    attr_reader :embeddings

    sig { returns(Hanzoai::Resources::Images) }
    attr_reader :images

    sig { returns(Hanzoai::Resources::Audio) }
    attr_reader :audio

    sig { returns(Hanzoai::Resources::Assistants) }
    attr_reader :assistants

    sig { returns(Hanzoai::Resources::Threads) }
    attr_reader :threads

    sig { returns(Hanzoai::Resources::Moderations) }
    attr_reader :moderations

    sig { returns(Hanzoai::Resources::Utils) }
    attr_reader :utils

    sig { returns(Hanzoai::Resources::Model) }
    attr_reader :model

    sig { returns(Hanzoai::Resources::ModelGroup) }
    attr_reader :model_group

    sig { returns(Hanzoai::Resources::Routes) }
    attr_reader :routes

    sig { returns(Hanzoai::Resources::Responses) }
    attr_reader :responses

    sig { returns(Hanzoai::Resources::Batches) }
    attr_reader :batches

    sig { returns(Hanzoai::Resources::Rerank) }
    attr_reader :rerank

    sig { returns(Hanzoai::Resources::FineTuning) }
    attr_reader :fine_tuning

    sig { returns(Hanzoai::Resources::Credentials) }
    attr_reader :credentials

    sig { returns(Hanzoai::Resources::VertexAI) }
    attr_reader :vertex_ai

    sig { returns(Hanzoai::Resources::Gemini) }
    attr_reader :gemini

    sig { returns(Hanzoai::Resources::Cohere) }
    attr_reader :cohere

    sig { returns(Hanzoai::Resources::Anthropic) }
    attr_reader :anthropic

    sig { returns(Hanzoai::Resources::Bedrock) }
    attr_reader :bedrock

    sig { returns(Hanzoai::Resources::EuAssemblyai) }
    attr_reader :eu_assemblyai

    sig { returns(Hanzoai::Resources::Assemblyai) }
    attr_reader :assemblyai

    sig { returns(Hanzoai::Resources::Azure) }
    attr_reader :azure

    sig { returns(Hanzoai::Resources::Langfuse) }
    attr_reader :langfuse

    sig { returns(Hanzoai::Resources::Config) }
    attr_reader :config

    sig { returns(Hanzoai::Resources::Test) }
    attr_reader :test

    sig { returns(Hanzoai::Resources::Health) }
    attr_reader :health

    sig { returns(Hanzoai::Resources::Active) }
    attr_reader :active

    sig { returns(Hanzoai::Resources::Settings) }
    attr_reader :settings

    sig { returns(Hanzoai::Resources::Key) }
    attr_reader :key

    sig { returns(Hanzoai::Resources::User) }
    attr_reader :user

    sig { returns(Hanzoai::Resources::Team) }
    attr_reader :team

    sig { returns(Hanzoai::Resources::Organization) }
    attr_reader :organization

    sig { returns(Hanzoai::Resources::Customer) }
    attr_reader :customer

    sig { returns(Hanzoai::Resources::Spend) }
    attr_reader :spend

    sig { returns(Hanzoai::Resources::Global) }
    attr_reader :global

    sig { returns(Hanzoai::Resources::Provider) }
    attr_reader :provider

    sig { returns(Hanzoai::Resources::Cache) }
    attr_reader :cache

    sig { returns(Hanzoai::Resources::Guardrails) }
    attr_reader :guardrails

    sig { returns(Hanzoai::Resources::Add) }
    attr_reader :add

    sig { returns(Hanzoai::Resources::Delete) }
    attr_reader :delete

    sig { returns(Hanzoai::Resources::Files) }
    attr_reader :files

    sig { returns(Hanzoai::Resources::Budget) }
    attr_reader :budget

    # Home
    sig do
      params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
        .returns(T.anything)
    end
    def get_home(request_options: {})
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        base_url: T.nilable(String),
        api_key: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # The default name of the subscription key header of Azure Defaults to
      #   `ENV["HANZO_API_KEY"]`
      api_key: ENV["HANZO_API_KEY"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
