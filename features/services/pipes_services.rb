# frozen_string_literal: true

class PipesServices
  HEADERS = { authorization: "Bearer #{ENV['pipefy_api_token']}" }.freeze

  def initialize
    @graphql = Graphlient::Client.new(ENVIRONMENT['base_uri'], headers: HEADERS)
  end

  def create_pipe(query_data)
    @graphql.query do
      mutation do
        createPipe(query_data) do
          clientMutationId
          pipe do
            id
            name
            phases { id name }
          end
        end
      end
    end
  end

  def create_phase_field(query_data)
    @graphql.query do
      mutation do
        createPhaseField(query_data) do
          phase_field { label id }
        end
      end
    end
  end

  def create_card(query_data)
    @graphql.query do
      mutation do
        createCard(query_data) do
          card do
            title
            id
          end
        end
      end
    end
  end
end
