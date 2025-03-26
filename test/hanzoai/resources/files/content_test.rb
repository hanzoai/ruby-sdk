# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Files::ContentTest < Hanzoai::Test::ResourceTest
  def test_retrieve_required_params
    response = @hanzo.files.content.retrieve("file_id", provider: "provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
