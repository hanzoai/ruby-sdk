# frozen_string_literal: true

module HanzoAI
  class Client < HanzoAI::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # The default name of the subscription key header of Azure
    # @return [String]
    attr_reader :api_key

    # @return [HanzoAI::Resources::Models]
    attr_reader :models

    # @return [HanzoAI::Resources::OpenAI]
    attr_reader :openai

    # @return [HanzoAI::Resources::Engines]
    attr_reader :engines

    # @return [HanzoAI::Resources::Chat]
    attr_reader :chat

    # @return [HanzoAI::Resources::Completions]
    attr_reader :completions

    # @return [HanzoAI::Resources::Embeddings]
    attr_reader :embeddings

    # @return [HanzoAI::Resources::Images]
    attr_reader :images

    # @return [HanzoAI::Resources::Audio]
    attr_reader :audio

    # @return [HanzoAI::Resources::Assistants]
    attr_reader :assistants

    # @return [HanzoAI::Resources::Threads]
    attr_reader :threads

    # @return [HanzoAI::Resources::Moderations]
    attr_reader :moderations

    # @return [HanzoAI::Resources::Utils]
    attr_reader :utils

    # @return [HanzoAI::Resources::Model]
    attr_reader :model

    # @return [HanzoAI::Resources::ModelGroup]
    attr_reader :model_group

    # @return [HanzoAI::Resources::Routes]
    attr_reader :routes

    # @return [HanzoAI::Resources::Responses]
    attr_reader :responses

    # @return [HanzoAI::Resources::Batches]
    attr_reader :batches

    # @return [HanzoAI::Resources::Rerank]
    attr_reader :rerank

    # @return [HanzoAI::Resources::FineTuning]
    attr_reader :fine_tuning

    # @return [HanzoAI::Resources::Credentials]
    attr_reader :credentials

    # @return [HanzoAI::Resources::VertexAI]
    attr_reader :vertex_ai

    # @return [HanzoAI::Resources::Gemini]
    attr_reader :gemini

    # @return [HanzoAI::Resources::Cohere]
    attr_reader :cohere

    # @return [HanzoAI::Resources::Anthropic]
    attr_reader :anthropic

    # @return [HanzoAI::Resources::Bedrock]
    attr_reader :bedrock

    # @return [HanzoAI::Resources::EuAssemblyai]
    attr_reader :eu_assemblyai

    # @return [HanzoAI::Resources::Assemblyai]
    attr_reader :assemblyai

    # @return [HanzoAI::Resources::Azure]
    attr_reader :azure

    # @return [HanzoAI::Resources::Langfuse]
    attr_reader :langfuse

    # @return [HanzoAI::Resources::Config]
    attr_reader :config

    # @return [HanzoAI::Resources::Test]
    attr_reader :test

    # @return [HanzoAI::Resources::Health]
    attr_reader :health

    # @return [HanzoAI::Resources::Active]
    attr_reader :active

    # @return [HanzoAI::Resources::Settings]
    attr_reader :settings

    # @return [HanzoAI::Resources::Key]
    attr_reader :key

    # @return [HanzoAI::Resources::User]
    attr_reader :user

    # @return [HanzoAI::Resources::Team]
    attr_reader :team

    # @return [HanzoAI::Resources::Organization]
    attr_reader :organization

    # @return [HanzoAI::Resources::Customer]
    attr_reader :customer

    # @return [HanzoAI::Resources::Spend]
    attr_reader :spend

    # @return [HanzoAI::Resources::Global]
    attr_reader :global

    # @return [HanzoAI::Resources::Provider]
    attr_reader :provider

    # @return [HanzoAI::Resources::Cache]
    attr_reader :cache

    # @return [HanzoAI::Resources::Guardrails]
    attr_reader :guardrails

    # @return [HanzoAI::Resources::Add]
    attr_reader :add

    # @return [HanzoAI::Resources::Delete]
    attr_reader :delete

    # @return [HanzoAI::Resources::Files]
    attr_reader :files

    # @return [HanzoAI::Resources::Budget]
    attr_reader :budget

    # Home
    #
    # @param params [HanzoAI::Models::ClientGetHomeParams, Hash{Symbol=>Object}] .
    #
    #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
    #
    # @return [Object]
    def get_home(params = {})
      request(method: :get, path: "", model: HanzoAI::Unknown, options: params[:request_options])
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"ocp-apim-subscription-key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param api_key [String, nil] The default name of the subscription key header of Azure Defaults to
    #   `ENV["HANZO_API_KEY"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      base_url: nil,
      api_key: ENV["HANZO_API_KEY"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.hanzo.ai"

      if api_key.nil?
        raise ArgumentError.new("api_key is required")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @models = HanzoAI::Resources::Models.new(client: self)
      @openai = HanzoAI::Resources::OpenAI.new(client: self)
      @engines = HanzoAI::Resources::Engines.new(client: self)
      @chat = HanzoAI::Resources::Chat.new(client: self)
      @completions = HanzoAI::Resources::Completions.new(client: self)
      @embeddings = HanzoAI::Resources::Embeddings.new(client: self)
      @images = HanzoAI::Resources::Images.new(client: self)
      @audio = HanzoAI::Resources::Audio.new(client: self)
      @assistants = HanzoAI::Resources::Assistants.new(client: self)
      @threads = HanzoAI::Resources::Threads.new(client: self)
      @moderations = HanzoAI::Resources::Moderations.new(client: self)
      @utils = HanzoAI::Resources::Utils.new(client: self)
      @model = HanzoAI::Resources::Model.new(client: self)
      @model_group = HanzoAI::Resources::ModelGroup.new(client: self)
      @routes = HanzoAI::Resources::Routes.new(client: self)
      @responses = HanzoAI::Resources::Responses.new(client: self)
      @batches = HanzoAI::Resources::Batches.new(client: self)
      @rerank = HanzoAI::Resources::Rerank.new(client: self)
      @fine_tuning = HanzoAI::Resources::FineTuning.new(client: self)
      @credentials = HanzoAI::Resources::Credentials.new(client: self)
      @vertex_ai = HanzoAI::Resources::VertexAI.new(client: self)
      @gemini = HanzoAI::Resources::Gemini.new(client: self)
      @cohere = HanzoAI::Resources::Cohere.new(client: self)
      @anthropic = HanzoAI::Resources::Anthropic.new(client: self)
      @bedrock = HanzoAI::Resources::Bedrock.new(client: self)
      @eu_assemblyai = HanzoAI::Resources::EuAssemblyai.new(client: self)
      @assemblyai = HanzoAI::Resources::Assemblyai.new(client: self)
      @azure = HanzoAI::Resources::Azure.new(client: self)
      @langfuse = HanzoAI::Resources::Langfuse.new(client: self)
      @config = HanzoAI::Resources::Config.new(client: self)
      @test = HanzoAI::Resources::Test.new(client: self)
      @health = HanzoAI::Resources::Health.new(client: self)
      @active = HanzoAI::Resources::Active.new(client: self)
      @settings = HanzoAI::Resources::Settings.new(client: self)
      @key = HanzoAI::Resources::Key.new(client: self)
      @user = HanzoAI::Resources::User.new(client: self)
      @team = HanzoAI::Resources::Team.new(client: self)
      @organization = HanzoAI::Resources::Organization.new(client: self)
      @customer = HanzoAI::Resources::Customer.new(client: self)
      @spend = HanzoAI::Resources::Spend.new(client: self)
      @global = HanzoAI::Resources::Global.new(client: self)
      @provider = HanzoAI::Resources::Provider.new(client: self)
      @cache = HanzoAI::Resources::Cache.new(client: self)
      @guardrails = HanzoAI::Resources::Guardrails.new(client: self)
      @add = HanzoAI::Resources::Add.new(client: self)
      @delete = HanzoAI::Resources::Delete.new(client: self)
      @files = HanzoAI::Resources::Files.new(client: self)
      @budget = HanzoAI::Resources::Budget.new(client: self)
    end
  end
end
