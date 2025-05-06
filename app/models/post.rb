class Post < ApplicationRecord
	# active strageの画像との関連付け
	has_many_attached :images


  validates :images, content_type: { in: %w[image/jpeg image/gif image/png ],
	                                    message: "画像のフォーマットはjpeg,gif,png,heicのみです"},
										size: 				{ less_than: 5.megabytes,
																	    message: "サイズは5MB以下のサイズです。"}
end
