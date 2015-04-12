class Person < ActiveRecord::Base
  has_many :orders
  
  validates :name, presence: true, length: { minimum: 2, too_short: "musisz użyć co najmniej 2 znaków" }
  validates :surname, presence: true, length: { minimum: 2, too_short: "musisz użyć co najmniej 2 znaków" }
  validates :email, presence: true, email: true
  validates_format_of :phone, :with => /(\d{3})-(\d{3})-(\d{3})/
  validates :address, presence: true, length: { minimum: 2, too_short: "musisz użyć co najmniej 2 znaków" }



  def to_s
    "#{name} #{surname}"
  end
  
end
