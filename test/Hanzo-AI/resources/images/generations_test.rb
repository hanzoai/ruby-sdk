# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Images::GenerationsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.images.generations.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
