class Pet < ApplicationRecord
  has_many :pet_histories
  belongs_to :client
  accepts_nested_attributes_for :pet_histories, :client

  def history_count
    pet_histories.count
  end

  def avg_weight
    pet_histories.average(:weight)
  end

  def avg_heigth
    pet_histories.average(:heigth)
  end

  def max_weight
    pet_histories.maximum(:weight)
  end

  def max_heigth
    pet_histories.maximum(:heigth)
  end

  def owner
    client.name
  end

end
