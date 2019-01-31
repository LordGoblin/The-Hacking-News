class User < ApplicationRecord
	has_many :liens
	has_many :commentaires
	has_many :com_de_coms
end
