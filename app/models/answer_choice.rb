# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  option      :string
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord

  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question

    
end
