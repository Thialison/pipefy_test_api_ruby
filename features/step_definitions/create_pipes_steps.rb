# frozen_string_literal: true

Dado('que tenho uma nova pipe criada com as etapas padrao') do
  @pipe = PipesServices.new
  @new_pipe_data = new_pipe(Faker::Games::Pokemon.name, ENVIRONMENT['organization_id'])
  @pipe_response = @pipe.create_pipe(@new_pipe_data)
end

Quando('realizo a criacao de um novo card') do
  phases, pipe_id = @pipe_response.original_hash['data']['createPipe']['pipe'].values_at('phases', 'id')
  @phase_field_data = new_phase_field('cpf', 'CPF', phases[0]['id'])
  @phase_response = @pipe.create_phase_field(@phase_field_data)
  @card_data = new_card(Faker::JapaneseMedia::DragonBall.character, pipe_id)
  @card_response = @pipe.create_card(@card_data)
end

Entao('visualizo os dados card de acordo com as especificacoes') do
  phase_fild_label = @phase_response.original_hash['data']['createPhaseField']['phase_field']['label']
  expect(@pipe_response.original_hash['data']['createPipe']['pipe']['name']).to eql(@new_pipe_data[:input][:name])
  expect(@card_response.original_hash['data']['createCard']['card']['title']).to eql(@card_data[:input][:title])
  expect(phase_fild_label).to eql(@phase_field_data[:input][:label])
end
