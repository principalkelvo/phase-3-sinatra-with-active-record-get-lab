class BakedGood < ActiveRecord::Base
  # add association macro here
  belongs_to :bakery

  def self.sort_price 
    self.order(price: :desc)
  end

  def self.most_expensive
    expensive=self.maximum(:price)
    self.where(price: expensive).take
  end
end
