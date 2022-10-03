class Post < ApplicationRecord
    # is expected to validate that :title cannot be empty/falsy (FAILED - 1)
    validates :title, presence: true
    # is expected to validate that the length of :content is at least 250 (FAILED - 2)
    validates :content, length:  { minimum: 250 }
    # is expected to validate that the length of :summary is at most 250 (FAILED - 2)
    validates :summary, length: { maximum: 250 }
    # is expected to validate that :category is either ‹"Fiction"› or ‹"Non-Fiction"› (FAILED - 2)
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    # is expected not to allow :title to be ‹"True Facts"› (FAILED - 2)
    validates :title, inclusion: {in: ["You Won't Believe These True Facts"]}
end
