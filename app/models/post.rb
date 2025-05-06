class Post < ApplicationRecord
	# active strageの画像との関連付け
	has_many_attached :images
end
