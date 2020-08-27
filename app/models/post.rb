class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(hashes)
    hashes.each do |index, cat_atts|
      if !cat_atts.empty?
        current_cat = Category.find_or_create_by(name: cat_atts[:name])
        self.post_categories.build(:category => current_cat)
      end
    end
  end

  

end
