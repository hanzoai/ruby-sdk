# typed: strong

module HanzoAI
  module Models
    class UtilTransformRequestParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(HanzoAI::Models::UtilTransformRequestParams::CallType::OrSymbol) }
      attr_accessor :call_type

      sig { returns(T.anything) }
      attr_accessor :request_body

      sig do
        params(
          call_type: HanzoAI::Models::UtilTransformRequestParams::CallType::OrSymbol,
          request_body: T.anything,
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(call_type:, request_body:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              call_type: HanzoAI::Models::UtilTransformRequestParams::CallType::OrSymbol,
              request_body: T.anything,
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      module CallType
        extend HanzoAI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::UtilTransformRequestParams::CallType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol) }

        EMBEDDING = T.let(:embedding, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AEMBEDDING = T.let(:aembedding, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        COMPLETION = T.let(:completion, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACOMPLETION = T.let(:acompletion, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ATEXT_COMPLETION =
          T.let(:atext_completion, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        TEXT_COMPLETION =
          T.let(:text_completion, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        IMAGE_GENERATION =
          T.let(:image_generation, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AIMAGE_GENERATION =
          T.let(:aimage_generation, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        MODERATION = T.let(:moderation, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AMODERATION = T.let(:amoderation, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ATRANSCRIPTION =
          T.let(:atranscription, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        TRANSCRIPTION =
          T.let(:transcription, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ASPEECH = T.let(:aspeech, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        SPEECH = T.let(:speech, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RERANK = T.let(:rerank, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARERANK = T.let(:arerank, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AREALTIME = T.let(:_arealtime, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_BATCH = T.let(:create_batch, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_BATCH =
          T.let(:acreate_batch, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARETRIEVE_BATCH =
          T.let(:aretrieve_batch, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RETRIEVE_BATCH =
          T.let(:retrieve_batch, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        PASS_THROUGH_ENDPOINT =
          T.let(:pass_through_endpoint, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ANTHROPIC_MESSAGES =
          T.let(:anthropic_messages, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        GET_ASSISTANTS =
          T.let(:get_assistants, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AGET_ASSISTANTS =
          T.let(:aget_assistants, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_ASSISTANTS =
          T.let(:create_assistants, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_ASSISTANTS =
          T.let(:acreate_assistants, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        DELETE_ASSISTANT =
          T.let(:delete_assistant, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ADELETE_ASSISTANT =
          T.let(:adelete_assistant, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_THREAD =
          T.let(:acreate_thread, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_THREAD =
          T.let(:create_thread, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AGET_THREAD = T.let(:aget_thread, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        GET_THREAD = T.let(:get_thread, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        A_ADD_MESSAGE =
          T.let(:a_add_message, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ADD_MESSAGE = T.let(:add_message, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AGET_MESSAGES =
          T.let(:aget_messages, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        GET_MESSAGES = T.let(:get_messages, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARUN_THREAD = T.let(:arun_thread, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RUN_THREAD = T.let(:run_thread, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARUN_THREAD_STREAM =
          T.let(:arun_thread_stream, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RUN_THREAD_STREAM =
          T.let(:run_thread_stream, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_RETRIEVE =
          T.let(:afile_retrieve, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_RETRIEVE =
          T.let(:file_retrieve, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_DELETE = T.let(:afile_delete, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_DELETE = T.let(:file_delete, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_LIST = T.let(:afile_list, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_LIST = T.let(:file_list, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_FILE = T.let(:acreate_file, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_FILE = T.let(:create_file, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        AFILE_CONTENT =
          T.let(:afile_content, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        FILE_CONTENT = T.let(:file_content, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CREATE_FINE_TUNING_JOB =
          T.let(:create_fine_tuning_job, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACREATE_FINE_TUNING_JOB =
          T.let(:acreate_fine_tuning_job, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ACANCEL_FINE_TUNING_JOB =
          T.let(:acancel_fine_tuning_job, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        CANCEL_FINE_TUNING_JOB =
          T.let(:cancel_fine_tuning_job, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ALIST_FINE_TUNING_JOBS =
          T.let(:alist_fine_tuning_jobs, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        LIST_FINE_TUNING_JOBS =
          T.let(:list_fine_tuning_jobs, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARETRIEVE_FINE_TUNING_JOB =
          T.let(:aretrieve_fine_tuning_job, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RETRIEVE_FINE_TUNING_JOB =
          T.let(:retrieve_fine_tuning_job, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        RESPONSES = T.let(:responses, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)
        ARESPONSES = T.let(:aresponses, HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol)

        sig { override.returns(T::Array[HanzoAI::Models::UtilTransformRequestParams::CallType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
