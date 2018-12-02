class Symphony < ActiveRecord::Base
  belongs_to :composer

  validates :name, presence: true
  #validates :key, presence: true
  validates :year, presence: true
  validates :runtime, presence: true
  validates :composer_id, presence: true

  def self.average_runtime
    average(:runtime)
  end

  def formatted_string
    nickname = moniker != "" ? (", \"#{moniker}\"") : ""
    designation = opus != "" ? (", #{opus}") : ""
    inkey = key != "" ? (" in #{key}") : ""
    "#{name}#{inkey}#{designation}#{nickname} (#{year}), Time: #{runtime} min."
  end

end
