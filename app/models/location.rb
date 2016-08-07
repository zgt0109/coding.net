# == Schema Information
#
# Table name: locations
#
#  id                :integer          not null, primary key
#  code              :string(255)
#  name              :string(255)
#  locationable_id   :integer
#  locationable_type :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#


class Location < ActiveRecord::Base
  belongs_to :locationable, polymorphic: true

  validates_presence_of :name
  validates :code, length: { maximum: 10 }
  validates :name, length: { maximum: 80 }
end
