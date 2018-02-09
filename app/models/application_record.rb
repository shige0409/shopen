class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  
  private

    def picture_size
      errors.add(:picture, "should be less than 5MB") if picture.size > 5.megabytes
    end
end
