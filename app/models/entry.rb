class Entry < ApplicationRecord
    belongs_to :category
    validates :meal_type , :calories , :fats , :carbohydrates , :category_id , presence: true


    def day 
        self.created_at.strftime("%b %e, %Y")
    end 

end
