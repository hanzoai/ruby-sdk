# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Model::InfoTest < HanzoAI::Test::ResourceTest
  def test_list
    response = @hanzo.model.info.list

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
