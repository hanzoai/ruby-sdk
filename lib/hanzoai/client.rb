# frozen_string_literal: true

module Hanzoai
  class Client < Hanzoai::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    # @type [Hash{Symbol=>String}]
    ENVIRONMENTS = {production: "https://api.hanzo.ai", sandbox: "https://api.sandbox.hanzo.ai"}
    # rubocop:enable Style/MutableConstant

    # The default name of the subscription key header of Azure
    # @return [String]
    attr_reader :api_key

    # @return [Hanzoai::Resources::Models]
    attr_reader :models

    # @return [Hanzoai::Resources::OpenAI]
    attr_reader :openai

    # @return [Hanzoai::Resources::Engines]
    attr_reader :engines

    # @return [Hanzoai::Resources::Chat]
    attr_reader :chat

    # @return [Hanzoai::Resources::Completions]
    attr_reader :completions

    # @return [Hanzoai::Resources::Embeddings]
    attr_reader :embeddings

    # @return [Hanzoai::Resources::Images]
    attr_reader :images

    # @return [Hanzoai::Resources::Audio]
    attr_reader :audio

    # @return [Hanzoai::Resources::Assistants]
    attr_reader :assistants

    # @return [Hanzoai::Resources::Threads]
    attr_reader :threads

    # @return [Hanzoai::Resources::Moderations]
    attr_reader :moderations

    # @return [Hanzoai::Resources::Utils]
    attr_reader :utils

    # @return [Hanzoai::Resources::Model]
    attr_reader :model

    # @return [Hanzoai::Resources::ModelGroup]
    attr_reader :model_group

    # @return [Hanzoai::Resources::Routes]
    attr_reader :routes

    # @return [Hanzoai::Resources::Responses]
    attr_reader :responses

    # @return [Hanzoai::Resources::Batches]
    attr_reader :batches

    # @return [Hanzoai::Resources::Rerank]
    attr_reader :rerank

    # @return [Hanzoai::Resources::FineTuning]
    attr_reader :fine_tuning

    # @return [Hanzoai::Resources::Credentials]
    attr_reader :credentials

    # @return [Hanzoai::Resources::VertexAI]
    attr_reader :vertex_ai

    # @return [Hanzoai::Resources::Gemini]
    attr_reader :gemini

    # @return [Hanzoai::Resources::Cohere]
    attr_reader :cohere

    # @return [Hanzoai::Resources::Anthropic]
    attr_reader :anthropic

    # @return [Hanzoai::Resources::Bedrock]
    attr_reader :bedrock

    # @return [Hanzoai::Resources::EuAssemblyai]
    attr_reader :eu_assemblyai

    # @return [Hanzoai::Resources::Assemblyai]
    attr_reader :assemblyai

    # @return [Hanzoai::Resources::Azure]
    attr_reader :azure

    # @return [Hanzoai::Resources::Langfuse]
    attr_reader :langfuse

    # @return [Hanzoai::Resources::Config]
    attr_reader :config

    # @return [Hanzoai::Resources::Test]
    attr_reader :test

    # @return [Hanzoai::Resources::Health]
    attr_reader :health

    # @return [Hanzoai::Resources::Active]
    attr_reader :active

    # @return [Hanzoai::Resources::Settings]
    attr_reader :settings

    # @return [Hanzoai::Resources::Key]
    attr_reader :key

    # @return [Hanzoai::Resources::User]
    attr_reader :user

    # @return [Hanzoai::Resources::Team]
    attr_reader :team

    # @return [Hanzoai::Resources::Organization]
    attr_reader :organization

    # @return [Hanzoai::Resources::Customer]
    attr_reader :customer

    # @return [Hanzoai::Resources::Spend]
    attr_reader :spend

    # @return [Hanzoai::Resources::Global]
    attr_reader :global

    # @return [Hanzoai::Resources::Provider]
    attr_reader :provider

    # @return [Hanzoai::Resources::Cache]
    attr_reader :cache

    # @return [Hanzoai::Resources::Guardrails]
    attr_reader :guardrails

    # @return [Hanzoai::Resources::Add]
    attr_reader :add

    # @return [Hanzoai::Resources::Delete]
    attr_reader :delete

    # @return [Hanzoai::Resources::Files]
    attr_reader :files

    # @return [Hanzoai::Resources::Budget]
    attr_reader :budget

    # Home
    #
    # @param params [Hanzoai::Models::ClientGetHomeParams, Hash{Symbol=>Object}] .
    #
    #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
    #
    # @return [Object]
    def get_home(params = {})
      request(method: :get, path: "", model: Hanzoai::Unknown, options: params[:request_options])
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"ocp-apim-subscription-key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param environment [:production, :sandbox, nil] Specifies the environment to use for the API.
    #
    #   Each environment maps to a different base URL:
    #
    #   - `production` corresponds to `https://api.hanzo.ai`
    #   - `sandbox` corresponds to `https://api.sandbox.hanzo.ai`
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
      environment: nil,
      base_url: nil,
      api_key: ENV["HANZO_API_KEY"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      case [environment, base_url]
      in [Symbol | String, String]
        raise ArgumentError.new("both environment and base_url given, expected only one")
      in [Symbol | String, nil]
        base_url = ENVIRONMENTS.fetch(environment.to_sym) do
          raise ArgumentError.new("environment must be one of #{ENVIRONMENTS.keys}, got #{environment}")
        end
      else
        base_url ||= ENVIRONMENTS.fetch(:production)
      end

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

      @models = Hanzoai::Resources::Models.new(client: self)
      @openai = Hanzoai::Resources::OpenAI.new(client: self)
      @engines = Hanzoai::Resources::Engines.new(client: self)
      @chat = Hanzoai::Resources::Chat.new(client: self)
      @completions = Hanzoai::Resources::Completions.new(client: self)
      @embeddings = Hanzoai::Resources::Embeddings.new(client: self)
      @images = Hanzoai::Resources::Images.new(client: self)
      @audio = Hanzoai::Resources::Audio.new(client: self)
      @assistants = Hanzoai::Resources::Assistants.new(client: self)
      @threads = Hanzoai::Resources::Threads.new(client: self)
      @moderations = Hanzoai::Resources::Moderations.new(client: self)
      @utils = Hanzoai::Resources::Utils.new(client: self)
      @model = Hanzoai::Resources::Model.new(client: self)
      @model_group = Hanzoai::Resources::ModelGroup.new(client: self)
      @routes = Hanzoai::Resources::Routes.new(client: self)
      @responses = Hanzoai::Resources::Responses.new(client: self)
      @batches = Hanzoai::Resources::Batches.new(client: self)
      @rerank = Hanzoai::Resources::Rerank.new(client: self)
      @fine_tuning = Hanzoai::Resources::FineTuning.new(client: self)
      @credentials = Hanzoai::Resources::Credentials.new(client: self)
      @vertex_ai = Hanzoai::Resources::VertexAI.new(client: self)
      @gemini = Hanzoai::Resources::Gemini.new(client: self)
      @cohere = Hanzoai::Resources::Cohere.new(client: self)
      @anthropic = Hanzoai::Resources::Anthropic.new(client: self)
      @bedrock = Hanzoai::Resources::Bedrock.new(client: self)
      @eu_assemblyai = Hanzoai::Resources::EuAssemblyai.new(client: self)
      @assemblyai = Hanzoai::Resources::Assemblyai.new(client: self)
      @azure = Hanzoai::Resources::Azure.new(client: self)
      @langfuse = Hanzoai::Resources::Langfuse.new(client: self)
      @config = Hanzoai::Resources::Config.new(client: self)
      @test = Hanzoai::Resources::Test.new(client: self)
      @health = Hanzoai::Resources::Health.new(client: self)
      @active = Hanzoai::Resources::Active.new(client: self)
      @settings = Hanzoai::Resources::Settings.new(client: self)
      @key = Hanzoai::Resources::Key.new(client: self)
      @user = Hanzoai::Resources::User.new(client: self)
      @team = Hanzoai::Resources::Team.new(client: self)
      @organization = Hanzoai::Resources::Organization.new(client: self)
      @customer = Hanzoai::Resources::Customer.new(client: self)
      @spend = Hanzoai::Resources::Spend.new(client: self)
      @global = Hanzoai::Resources::Global.new(client: self)
      @provider = Hanzoai::Resources::Provider.new(client: self)
      @cache = Hanzoai::Resources::Cache.new(client: self)
      @guardrails = Hanzoai::Resources::Guardrails.new(client: self)
      @add = Hanzoai::Resources::Add.new(client: self)
      @delete = Hanzoai::Resources::Delete.new(client: self)
      @files = Hanzoai::Resources::Files.new(client: self)
      @budget = Hanzoai::Resources::Budget.new(client: self)
    end
  end
end
