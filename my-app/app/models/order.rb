class Order < ActiveRecord::Base
  belongs_to :person

  def to_s
    "Ilosc: #{price}, Komentatrz: #{comment}"
  end
end
