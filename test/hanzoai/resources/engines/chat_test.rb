# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Engines::ChatTest < Hanzoai::Test::ResourceTest
  def test_complete
    response = @hanzo.engines.chat.complete("model")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
