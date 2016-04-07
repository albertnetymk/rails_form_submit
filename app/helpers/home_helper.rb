module HomeHelper
  class UserModel
    include ActiveModel::Model
    attr_accessor :name, :age
  end
end
