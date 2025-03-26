# frozen_string_literal: true

module HanzoAI
  module Models
    class UtilTransformRequestParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute call_type
      #
      #   @return [Symbol, HanzoAI::Models::UtilTransformRequestParams::CallType]
      required :call_type, enum: -> { HanzoAI::Models::UtilTransformRequestParams::CallType }

      # @!attribute request_body
      #
      #   @return [Object]
      required :request_body, HanzoAI::Unknown

      # @!parse
      #   # @param call_type [Symbol, HanzoAI::Models::UtilTransformRequestParams::CallType]
      #   # @param request_body [Object]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(call_type:, request_body:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module CallType
        extend HanzoAI::Enum

        EMBEDDING = :embedding
        AEMBEDDING = :aembedding
        COMPLETION = :completion
        ACOMPLETION = :acompletion
        ATEXT_COMPLETION = :atext_completion
        TEXT_COMPLETION = :text_completion
        IMAGE_GENERATION = :image_generation
        AIMAGE_GENERATION = :aimage_generation
        MODERATION = :moderation
        AMODERATION = :amoderation
        ATRANSCRIPTION = :atranscription
        TRANSCRIPTION = :transcription
        ASPEECH = :aspeech
        SPEECH = :speech
        RERANK = :rerank
        ARERANK = :arerank
        AREALTIME = :_arealtime
        CREATE_BATCH = :create_batch
        ACREATE_BATCH = :acreate_batch
        ARETRIEVE_BATCH = :aretrieve_batch
        RETRIEVE_BATCH = :retrieve_batch
        PASS_THROUGH_ENDPOINT = :pass_through_endpoint
        ANTHROPIC_MESSAGES = :anthropic_messages
        GET_ASSISTANTS = :get_assistants
        AGET_ASSISTANTS = :aget_assistants
        CREATE_ASSISTANTS = :create_assistants
        ACREATE_ASSISTANTS = :acreate_assistants
        DELETE_ASSISTANT = :delete_assistant
        ADELETE_ASSISTANT = :adelete_assistant
        ACREATE_THREAD = :acreate_thread
        CREATE_THREAD = :create_thread
        AGET_THREAD = :aget_thread
        GET_THREAD = :get_thread
        A_ADD_MESSAGE = :a_add_message
        ADD_MESSAGE = :add_message
        AGET_MESSAGES = :aget_messages
        GET_MESSAGES = :get_messages
        ARUN_THREAD = :arun_thread
        RUN_THREAD = :run_thread
        ARUN_THREAD_STREAM = :arun_thread_stream
        RUN_THREAD_STREAM = :run_thread_stream
        AFILE_RETRIEVE = :afile_retrieve
        FILE_RETRIEVE = :file_retrieve
        AFILE_DELETE = :afile_delete
        FILE_DELETE = :file_delete
        AFILE_LIST = :afile_list
        FILE_LIST = :file_list
        ACREATE_FILE = :acreate_file
        CREATE_FILE = :create_file
        AFILE_CONTENT = :afile_content
        FILE_CONTENT = :file_content
        CREATE_FINE_TUNING_JOB = :create_fine_tuning_job
        ACREATE_FINE_TUNING_JOB = :acreate_fine_tuning_job
        ACANCEL_FINE_TUNING_JOB = :acancel_fine_tuning_job
        CANCEL_FINE_TUNING_JOB = :cancel_fine_tuning_job
        ALIST_FINE_TUNING_JOBS = :alist_fine_tuning_jobs
        LIST_FINE_TUNING_JOBS = :list_fine_tuning_jobs
        ARETRIEVE_FINE_TUNING_JOB = :aretrieve_fine_tuning_job
        RETRIEVE_FINE_TUNING_JOB = :retrieve_fine_tuning_job
        RESPONSES = :responses
        ARESPONSES = :aresponses

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
