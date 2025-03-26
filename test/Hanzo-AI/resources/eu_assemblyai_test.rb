# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::EuAssemblyaiTest < HanzoAI::Test::ResourceTest
  def test_create
    response = @hanzo.eu_assemblyai.create("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.eu_assemblyai.retrieve("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_update
    response = @hanzo.eu_assemblyai.update("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete
    response = @hanzo.eu_assemblyai.delete("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_patch
    response = @hanzo.eu_assemblyai.patch("endpoint")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
