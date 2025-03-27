# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Images::GenerationsTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.images.generations.create

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
