class Contact < ApplicationRecord
  belongs_to :user
  
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_phone_code
    "+81 #{phone_number}"
  end

  def self.all_john
    self.where(first_name: "John")
  end
  
end

