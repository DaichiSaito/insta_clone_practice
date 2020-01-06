class SearchPostsForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :body, :string

  def search
    scope = Post.all
    scope = scope.body_contain(body) if body.present?
    # scope = scope.by_comment(body) if body.present?
    scope
  end
end
