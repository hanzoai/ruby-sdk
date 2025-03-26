# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::Audio::SpeechTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.audio.speech.create

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
