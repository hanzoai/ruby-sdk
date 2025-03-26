# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::GeminiTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.gemini.create("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.gemini.retrieve("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update
    response = @hanzo.gemini.update("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete
    response = @hanzo.gemini.delete("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_patch
    response = @hanzo.gemini.patch("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
