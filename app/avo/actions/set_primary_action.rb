
class SetPrimaryAction < Avo::BaseAction
  self.name = "Set primary"



  field :notify_client, as: :boolean, default: true

  self.visible = lambda do
    begin
      return false unless view == :show || view == :index
      true
    end
  end

  def handle(**args)
    models, field_params, _current_user, resource = args.values_at(:models, :fields, :current_user, :resource)

    models.each do |contract|
      Rails.logger.debug "DONE"
    end
  end

end
