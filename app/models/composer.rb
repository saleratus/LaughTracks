class Composer < ActiveRecord::Base
  has_many :symphonies

  validates :surname, presence: true
  validates :forename, presence: true
  validates :city, presence: true
  validates :dob, presence: true
  validates :dod, presence: true
  validates :age, presence: true

  def self.average_age
    self.average(:age)
  end

  def self.total_shown
    self.all.count
  end

  def self.get_by_age(age)
    Composer.where(age: age)
  end

  def self.get_by_id(id)
    Composer.where(id: id)
  end

  def self.get_symphonies
    ids = self.pluck(:id)
    Symphony.where(composer_id: ids)
  end

  def formatted_string
    "#{forename} #{surname} (#{dob} - #{dod}), Age: #{age}, City: #{city}"
  end

end
