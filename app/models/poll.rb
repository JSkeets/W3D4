# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord

  belongs_to :author,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_one :question_list,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :QuestionList

  has_many :questions,
    through: :question_list,
    source: :questions
    
end
