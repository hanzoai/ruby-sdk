# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::OpenAITest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.openai.create("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.openai.retrieve("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update
    response = @hanzo.openai.update("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete
    response = @hanzo.openai.delete("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_patch
    response = @hanzo.openai.patch("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
