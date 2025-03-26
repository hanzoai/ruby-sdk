# frozen_string_literal: true

require_relative "../../test_helper"

class HanzoAI::Test::Resources::Audio::SpeechTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.audio.speech.create

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
