# == Schema Information
#
# Table name: patients
#
#  id           :integer          not null, primary key
#  first_name   :string(255)
#  middle_name  :string(255)
#  last_name    :string(255)
#  birthday     :date
#  gender       :string(255)
#  status       :string(255)
#  viewed_count :integer
#  deleted_at   :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


class Patient < ActiveRecord::Base
  acts_as_paranoid
  extend Enumerize

  has_one :location, as: :locationable
  accepts_nested_attributes_for :location
  validates_presence_of :first_name, :last_name, :status
  validates :first_name, length: { maximum: 30 }
  validates :middle_name, length: { maximum: 10 }
  validates :last_name, length: { maximum: 30 }

  enumerize :gender, in: [:unavailable, :male, :female]
  enumerize :status, in: [:initial, :referred, :treatment, :closed]
end
