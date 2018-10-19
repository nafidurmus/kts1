class Weight < ApplicationRecord
	belongs_to :user
	GENDER = ["man", "woman"]
end
