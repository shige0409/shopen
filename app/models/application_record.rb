class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true


  private

    def picture_size
      if picture.size > 3.megabytes
        errors.add(:picture, "should be less than 3MB")
      end
    end
end
