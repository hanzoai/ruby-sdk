# typed: strong

module Hanzoai
  module Models
    class UtilTransformRequestParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(Hanzoai::Models::UtilTransformRequestParams::CallType::OrSymbol) }
      attr_accessor :call_type

      sig { returns(T.anything) }
      attr_accessor :request_body

      sig do
        params(
          call_type: Hanzoai::Models::UtilTransformRequestParams::CallType::OrSymbol,
          request_body: T.anything,
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(call_type:, request_body:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              call_type: Hanzoai::Models::UtilTransformRequestParams::CallType::OrSymbol,
              request_body: T.anything,
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end

      module CallType
        extend Hanzoai::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Hanzoai::Models::UtilTransformRequestParams::CallType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol) }

        EMBEDDING = T.let(:embedding, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AEMBEDDING = T.let(:aembedding, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        COMPLETION = T.let(:completion, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACOMPLETION = T.let(:acompletion, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ATEXT_COMPLETION =
          T.let(:atext_completion, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        TEXT_COMPLETION =
          T.let(:text_completion, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        IMAGE_GENERATION =
          T.let(:image_generation, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AIMAGE_GENERATION =
          T.let(:aimage_generation, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        MODERATION = T.let(:moderation, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AMODERATION = T.let(:amoderation, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ATRANSCRIPTION =
          T.let(:atranscription, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        TRANSCRIPTION =
          T.let(:transcription, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ASPEECH = T.let(:aspeech, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        SPEECH = T.let(:speech, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RERANK = T.let(:rerank, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARERANK = T.let(:arerank, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AREALTIME = T.let(:_arealtime, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_BATCH = T.let(:create_batch, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_BATCH =
          T.let(:acreate_batch, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARETRIEVE_BATCH =
          T.let(:aretrieve_batch, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RETRIEVE_BATCH =
          T.let(:retrieve_batch, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        PASS_THROUGH_ENDPOINT =
          T.let(:pass_through_endpoint, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ANTHROPIC_MESSAGES =
          T.let(:anthropic_messages, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        GET_ASSISTANTS =
          T.let(:get_assistants, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AGET_ASSISTANTS =
          T.let(:aget_assistants, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_ASSISTANTS =
          T.let(:create_assistants, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_ASSISTANTS =
          T.let(:acreate_assistants, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        DELETE_ASSISTANT =
          T.let(:delete_assistant, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ADELETE_ASSISTANT =
          T.let(:adelete_assistant, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_THREAD =
          T.let(:acreate_thread, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_THREAD =
          T.let(:create_thread, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AGET_THREAD = T.let(:aget_thread, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        GET_THREAD = T.let(:get_thread, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        A_ADD_MESSAGE =
          T.let(:a_add_message, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ADD_MESSAGE = T.let(:add_message, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AGET_MESSAGES =
          T.let(:aget_messages, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        GET_MESSAGES = T.let(:get_messages, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARUN_THREAD = T.let(:arun_thread, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RUN_THREAD = T.let(:run_thread, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARUN_THREAD_STREAM =
          T.let(:arun_thread_stream, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RUN_THREAD_STREAM =
          T.let(:run_thread_stream, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_RETRIEVE =
          T.let(:afile_retrieve, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_RETRIEVE =
          T.let(:file_retrieve, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_DELETE = T.let(:afile_delete, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_DELETE = T.let(:file_delete, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_LIST = T.let(:afile_list, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_LIST = T.let(:file_list, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_FILE = T.let(:acreate_file, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_FILE = T.let(:create_file, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_CONTENT =
          T.let(:afile_content, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_CONTENT = T.let(:file_content, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_FINE_TUNING_JOB =
          T.let(:create_fine_tuning_job, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_FINE_TUNING_JOB =
          T.let(:acreate_fine_tuning_job, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACANCEL_FINE_TUNING_JOB =
          T.let(:acancel_fine_tuning_job, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CANCEL_FINE_TUNING_JOB =
          T.let(:cancel_fine_tuning_job, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ALIST_FINE_TUNING_JOBS =
          T.let(:alist_fine_tuning_jobs, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        LIST_FINE_TUNING_JOBS =
          T.let(:list_fine_tuning_jobs, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARETRIEVE_FINE_TUNING_JOB =
          T.let(:aretrieve_fine_tuning_job, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RETRIEVE_FINE_TUNING_JOB =
          T.let(:retrieve_fine_tuning_job, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RESPONSES = T.let(:responses, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARESPONSES = T.let(:aresponses, Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol)

        sig { override.returns(T::Array[Hanzoai::Models::UtilTransformRequestParams::CallType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
