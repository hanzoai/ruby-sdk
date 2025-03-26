# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::ModelTest < HanzoAI::Test::ResourceTest
  def test_create_required_params
    response =
      @hanzo.model.create(llm_params: {model: "model"}, model_info: {id: "id"}, model_name: "model_name")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.model.delete(id: "id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
