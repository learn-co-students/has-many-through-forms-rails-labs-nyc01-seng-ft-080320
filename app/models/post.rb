class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |c|
      if c[:name].strip != ""
        category = Category.find_or_create_by(c)
        self.categories << category
      end
    end
  end

  def unique_users
    self.users.distinct
  end

end
