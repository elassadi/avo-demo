# frozen_string_literal: true

module AnimalStiConcern
  def show_path
    args = {}

    if @parent_model.present?
      args = {
        via_resource_class: parent_resource.class.to_s,
        via_resource_id: @parent_model.id
      }
    end

    if @parent_resource.present? && @parent_resource.class.to_s == "FarmResource"
      real_resource = ::Avo::App.get_resource_by_model_name(@resource.model.class).dup

      return helpers.resource_path(model: @resource.model, resource: real_resource, **args)
    end

    super
  end
end