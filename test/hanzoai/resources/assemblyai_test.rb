# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::AssemblyaiTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.assemblyai.create("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.assemblyai.retrieve("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_update
    response = @hanzo.assemblyai.update("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_delete
    response = @hanzo.assemblyai.delete("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_patch
    response = @hanzo.assemblyai.patch("endpoint")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
