# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Chat::CompletionsTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.chat.completions.create

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
