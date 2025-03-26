# typed: strong

module HanzoAI
  class Client < HanzoAI::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # The default name of the subscription key header of Azure
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(HanzoAI::Resources::Models) }
    attr_reader :models

    sig { returns(HanzoAI::Resources::OpenAI) }
    attr_reader :openai

    sig { returns(HanzoAI::Resources::Engines) }
    attr_reader :engines

    sig { returns(HanzoAI::Resources::Chat) }
    attr_reader :chat

    sig { returns(HanzoAI::Resources::Completions) }
    attr_reader :completions

    sig { returns(HanzoAI::Resources::Embeddings) }
    attr_reader :embeddings

    sig { returns(HanzoAI::Resources::Images) }
    attr_reader :images

    sig { returns(HanzoAI::Resources::Audio) }
    attr_reader :audio

    sig { returns(HanzoAI::Resources::Assistants) }
    attr_reader :assistants

    sig { returns(HanzoAI::Resources::Threads) }
    attr_reader :threads

    sig { returns(HanzoAI::Resources::Moderations) }
    attr_reader :moderations

    sig { returns(HanzoAI::Resources::Utils) }
    attr_reader :utils

    sig { returns(HanzoAI::Resources::Model) }
    attr_reader :model

    sig { returns(HanzoAI::Resources::ModelGroup) }
    attr_reader :model_group

    sig { returns(HanzoAI::Resources::Routes) }
    attr_reader :routes

    sig { returns(HanzoAI::Resources::Responses) }
    attr_reader :responses

    sig { returns(HanzoAI::Resources::Batches) }
    attr_reader :batches

    sig { returns(HanzoAI::Resources::Rerank) }
    attr_reader :rerank

    sig { returns(HanzoAI::Resources::FineTuning) }
    attr_reader :fine_tuning

    sig { returns(HanzoAI::Resources::Credentials) }
    attr_reader :credentials

    sig { returns(HanzoAI::Resources::VertexAI) }
    attr_reader :vertex_ai

    sig { returns(HanzoAI::Resources::Gemini) }
    attr_reader :gemini

    sig { returns(HanzoAI::Resources::Cohere) }
    attr_reader :cohere

    sig { returns(HanzoAI::Resources::Anthropic) }
    attr_reader :anthropic

    sig { returns(HanzoAI::Resources::Bedrock) }
    attr_reader :bedrock

    sig { returns(HanzoAI::Resources::EuAssemblyai) }
    attr_reader :eu_assemblyai

    sig { returns(HanzoAI::Resources::Assemblyai) }
    attr_reader :assemblyai

    sig { returns(HanzoAI::Resources::Azure) }
    attr_reader :azure

    sig { returns(HanzoAI::Resources::Langfuse) }
    attr_reader :langfuse

    sig { returns(HanzoAI::Resources::Config) }
    attr_reader :config

    sig { returns(HanzoAI::Resources::Test) }
    attr_reader :test

    sig { returns(HanzoAI::Resources::Health) }
    attr_reader :health

    sig { returns(HanzoAI::Resources::Active) }
    attr_reader :active

    sig { returns(HanzoAI::Resources::Settings) }
    attr_reader :settings

    sig { returns(HanzoAI::Resources::Key) }
    attr_reader :key

    sig { returns(HanzoAI::Resources::User) }
    attr_reader :user

    sig { returns(HanzoAI::Resources::Team) }
    attr_reader :team

    sig { returns(HanzoAI::Resources::Organization) }
    attr_reader :organization

    sig { returns(HanzoAI::Resources::Customer) }
    attr_reader :customer

    sig { returns(HanzoAI::Resources::Spend) }
    attr_reader :spend

    sig { returns(HanzoAI::Resources::Global) }
    attr_reader :global

    sig { returns(HanzoAI::Resources::Provider) }
    attr_reader :provider

    sig { returns(HanzoAI::Resources::Cache) }
    attr_reader :cache

    sig { returns(HanzoAI::Resources::Guardrails) }
    attr_reader :guardrails

    sig { returns(HanzoAI::Resources::Add) }
    attr_reader :add

    sig { returns(HanzoAI::Resources::Delete) }
    attr_reader :delete

    sig { returns(HanzoAI::Resources::Files) }
    attr_reader :files

    sig { returns(HanzoAI::Resources::Budget) }
    attr_reader :budget

    # Home
    sig do
      params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
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
