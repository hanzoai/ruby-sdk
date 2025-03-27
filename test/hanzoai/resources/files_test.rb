# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::FilesTest < Hanzoai::Test::ResourceTest
  def test_create_required_params
    response = @hanzo.files.create("provider", file: StringIO.new("some file contents"), purpose: "purpose")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve_required_params
    response = @hanzo.files.retrieve("file_id", provider: "provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.files.list("provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete_required_params
    response = @hanzo.files.delete("file_id", provider: "provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
