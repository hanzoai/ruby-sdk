# typed: strong

module Hanzoai
  module Resources
    class Team
      class Model
        # Add models to a team's allowed model list. Only proxy admin or team admin can
        #   add models.
        #
        #   Parameters:
        #
        #   - team_id: str - Required. The team to add models to
        #   - models: List[str] - Required. List of models to add to the team
        #
        #   Example Request:
        #
        #   ```
        #   curl --location 'http://0.0.0.0:4000/team/model/add'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
        #       "team_id": "team-1234",
        #       "models": ["gpt-4", "claude-2"]
        #   }'
        #   ```
        sig do
          params(
            models: T::Array[String],
            team_id: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def add(models:, team_id:, request_options: {})
        end

        # Remove models from a team's allowed model list. Only proxy admin or team admin
        #   can remove models.
        #
        #   Parameters:
        #
        #   - team_id: str - Required. The team to remove models from
        #   - models: List[str] - Required. List of models to remove from the team
        #
        #   Example Request:
        #
        #   ```
        #   curl --location 'http://0.0.0.0:4000/team/model/delete'     --header 'Authorization: Bearer sk-1234'     --header 'Content-Type: application/json'     --data '{
        #       "team_id": "team-1234",
        #       "models": ["gpt-4"]
        #   }'
        #   ```
        sig do
          params(
            models: T::Array[String],
            team_id: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def remove(models:, team_id:, request_options: {})
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
