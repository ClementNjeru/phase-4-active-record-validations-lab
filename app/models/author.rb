class Author < ApplicationRecord
    #is expected to validate that :name cannot be empty/falsy
        validates :name, presence: true
    #is expected to validate that :name is case-sensitively unique (FAILED - 1)
        validates :name, uniqueness: true
    # is expected to validate that the length of :phone_number is 10 (FAILED - 2)
        validates :phone_number, numericality: true, length: { is: 10 }
end
