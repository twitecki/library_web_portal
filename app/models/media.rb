class Media < ActiveRecord::Base

	belongs_to :user
	belongs_to :media_type
#	validates :user_id, presence: true

end
