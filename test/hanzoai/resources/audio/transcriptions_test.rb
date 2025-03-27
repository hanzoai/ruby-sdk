# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Audio::TranscriptionsTest < Hanzoai::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.audio.transcriptions.create(file: StringIO.new("some file contents"))

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
