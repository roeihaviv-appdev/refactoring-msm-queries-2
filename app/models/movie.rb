# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  belongs_to(:director, { :class_name => "Director", :foreign_key => "director_id" })

  # def director
  #   key = self.director_id

  #   matching_set = Director.where({ :id => key })

  #   the_one = matching_set.at(0)

  #   return the_one
  # end
end

# has_many(:character, { :class_name => "Character", :forign_key => "movie_id" })


# Actor#characters -> has_many
# Character#actor -> belongs_to

# Movie#character
# Character#movie

# Movie#actor
# Director#filmography
