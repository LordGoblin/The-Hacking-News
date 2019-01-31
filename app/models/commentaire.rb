class Commentaire < ApplicationRecord
	belongs_to :user
	belongs_to :lien
	has_many :com_de_coms
end
