# frozen_string_literal: true

module PipesFactories
  def new_pipe(name, organization_id)
    {
      input: {
        name: name,
        organization_id: organization_id
      }
    }
  end

  def new_phase_field(type, label, phase_id)
    {
      input: {
        type: type,
        label: label,
        phase_id: phase_id
      }
    }
  end

  def new_card(title, pipe_id)
    {
      input: {
        title: title,
        pipe_id: pipe_id
      }
    }
  end
end

World(PipesFactories)
