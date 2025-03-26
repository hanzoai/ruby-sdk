# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::ModerationsTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.moderations.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
