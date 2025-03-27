# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Responses::InputItemsTest < Hanzoai::Test::ResourceTest
  def test_list
    response = @hanzo.responses.input_items.list("response_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
