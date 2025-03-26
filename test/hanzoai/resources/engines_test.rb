# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::EnginesTest < Hanzoai::Test::ResourceTest
  def test_complete
    response = @hanzo.engines.complete("model")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_embed
    response = @hanzo.engines.embed("model")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
