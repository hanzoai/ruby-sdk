# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::VertexAITest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.vertex_ai.create("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.vertex_ai.retrieve("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update
    response = @hanzo.vertex_ai.update("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete
    response = @hanzo.vertex_ai.delete("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_patch
    response = @hanzo.vertex_ai.patch("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
