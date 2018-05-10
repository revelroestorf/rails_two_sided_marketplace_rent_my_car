class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car


  # validates :odo_start, length: { maximum: 8 },
  #                       numericality: true
  #
  # validates :odo_end, length: { maximum: 8 },
  #                     numericality: true

  # validates :odo_end, presence: false, if: :odo_start_present
  #
  # private
  #
  # def odo_start_present
  #   if self.odo_start
  #     if :odo_end >= self.odo_start
  #     end
  #   end
  # end


end
