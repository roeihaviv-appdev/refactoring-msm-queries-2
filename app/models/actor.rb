# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  has_many(:characters)

#   def characters
#     key = self.id

#     the_many = Character.where({ :actor_id => key })

#     return the_many
#   end

  has_many(:filmography, {
    :through => :characters,
    :source => :movie
  })

  # has_many(:filmography, { :class_name => "Actor", :foreign_key => "movie_id" })

  # belongs_to(:filmography, {
  #   :class_name => "Movie",
  #   :foreign_key => "filmography"
  # })

  # def filmography
  #   the_many = Array.new

  #   self.characters.each do |joining_record|
  #     destination_record = joining_record.movie

  #     the_many.push(destination_record)
  #   end

  #   return the_many
  # end

end
