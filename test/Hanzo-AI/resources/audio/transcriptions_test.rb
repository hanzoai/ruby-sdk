# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Audio::TranscriptionsTest < HanzoAI::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.audio.transcriptions.create(file: StringIO.new("some file contents"))

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
