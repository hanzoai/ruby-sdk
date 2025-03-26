# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::UtilsTest < Hanzoai::Test::ResourceTest
  def test_get_supported_openai_params_required_params
    response = @hanzo.utils.get_supported_openai_params(model: "model")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_token_counter_required_params
    response = @hanzo.utils.token_counter(model: "model")

    assert_pattern do
      response => Hanzoai::Models::UtilTokenCounterResponse
    end

    assert_pattern do
      response => {
        model_used: String,
        request_model: String,
        tokenizer_type: String,
        total_tokens: Integer
      }
    end
  end

  def test_transform_request_required_params
    response = @hanzo.utils.transform_request(call_type: :embedding, request_body: {})

    assert_pattern do
      response => Hanzoai::Models::UtilTransformRequestResponse
    end

    assert_pattern do
      response => {
        error: String | nil,
        raw_request_api_base: String | nil,
        raw_request_body: Hanzoai::Unknown | nil,
        raw_request_headers: Hanzoai::Unknown | nil
      }
    end
  end
end
