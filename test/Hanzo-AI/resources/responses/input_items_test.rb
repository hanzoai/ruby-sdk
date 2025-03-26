# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Responses::InputItemsTest < HanzoAI::Test::ResourceTest
  def test_list
    response = @hanzo.responses.input_items.list("response_id")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
