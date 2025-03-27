# frozen_string_literal: true

require_relative "../test_helper"

class Hanzoai::Test::Resources::BatchesTest < Hanzoai::Test::ResourceTest
  def test_create
    response = @hanzo.batches.create

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve
    response = @hanzo.batches.retrieve("batch_id")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list
    response = @hanzo.batches.list

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_cancel_with_provider_required_params
    response = @hanzo.batches.cancel_with_provider("batch_id", provider: "provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_create_with_provider
    response = @hanzo.batches.create_with_provider("provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list_with_provider
    response = @hanzo.batches.list_with_provider("provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve_with_provider_required_params
    response = @hanzo.batches.retrieve_with_provider("batch_id", provider: "provider")

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
