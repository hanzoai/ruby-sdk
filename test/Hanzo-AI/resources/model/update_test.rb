# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Model::UpdateTest < HanzoAI::Test::ResourceTest
  def test_full
    response = @hanzo.model.update.full

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_partial
    response = @hanzo.model.update.partial("model_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
