class MammalResource < Avo::BaseResource
  self.title = :name
  self.model_class= "Mammal"
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :name, as: :text
  field :farm, as: :belongs_to
  # add fields here
end
