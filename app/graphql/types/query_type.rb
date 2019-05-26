module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    # `all_users` is automatically camelcased to `allUsers`
    field :all_users, [UserType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_users
      User.all
    end
  end
end
