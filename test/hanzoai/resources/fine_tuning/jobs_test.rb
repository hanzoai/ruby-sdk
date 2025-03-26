# frozen_string_literal: true

require_relative "../../test_helper"

class Hanzoai::Test::Resources::FineTuning::JobsTest < Hanzoai::Test::ResourceTest
  def test_create_required_params
    response =
      @hanzo.fine_tuning.jobs.create(
        custom_llm_provider: :openai,
        model: "model",
        training_file: "training_file"
      )

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_retrieve_required_params
    response = @hanzo.fine_tuning.jobs.retrieve("fine_tuning_job_id", custom_llm_provider: :openai)

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end

  def test_list_required_params
    response = @hanzo.fine_tuning.jobs.list(custom_llm_provider: :openai)

    assert_pattern do
      response => Hanzoai::Unknown
    end
  end
end
