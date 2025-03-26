# frozen_string_literal: true

require_relative "../test_helper"

class HanzoAI::Test::Resources::FilesTest < HanzoAI::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.files.create("provider", file: StringIO.new("some file contents"), purpose: "purpose")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_retrieve_required_params
    response = @hanzo.files.retrieve("file_id", provider: "provider")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_list
    response = @hanzo.files.list("provider")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.files.delete("file_id", provider: "provider")

    assert_pattern do
      response => HanzoAI::Unknown
    end
  end
end
