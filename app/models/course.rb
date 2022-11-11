class Course < ApplicationRecord

    # validations
    validates :title, presence: true, length: { :minimum => 5 }
    validates :description, presence: true, length: { :minimum => 10 }

    def to_s
        title
    end

    has_rich_text :description
end
