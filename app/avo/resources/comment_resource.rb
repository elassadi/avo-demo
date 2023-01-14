class CommentResource < Avo::BaseResource
  self.title = :id
  self.authorization_policy = CommentPolicy
  self.includes = []
  self.search_query = -> do
    scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  end

  self.stimulus_controllers = "comment-resource"

  field :id, as: :id
  field :body, as: :text
  field :post, as: :belongs_to, searchable: true,
    html: {
      edit: {
        input: {
          data: {
            action: "comment-resource#onCommentChange"
          }
        }
      },
      new: {
        input: {
          data: {
            action: "comment-resource#onCommentChange"
          }
        }
      }
    }


  # add fields here


  action SetPrimaryAction
end
