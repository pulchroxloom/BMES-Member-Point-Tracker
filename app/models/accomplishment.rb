class Accomplishment < ApplicationRecord
	has_many :accomplishments_members
	has_many :members, :through => :accomplishments_members
end
