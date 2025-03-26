# frozen_string_literal: true

module HanzoAI
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
        #
        # @param params [HanzoAI::Models::Team::ModelAddParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :models
        #
        #   @option params [String] :team_id
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def add(params)
          parsed, options = HanzoAI::Models::Team::ModelAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: "team/model/add",
            body: parsed,
            model: HanzoAI::Unknown,
            options: options
          )
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
        #
        # @param params [HanzoAI::Models::Team::ModelRemoveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :models
        #
        #   @option params [String] :team_id
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def remove(params)
          parsed, options = HanzoAI::Models::Team::ModelRemoveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "team/model/delete",
            body: parsed,
            model: HanzoAI::Unknown,
            options: options
          )
        end

        # @param client [HanzoAI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
