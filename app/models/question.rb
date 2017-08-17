# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord

    has_one :question_list,
      primary_key: :id,
      foreign_key: :question_id,
      class_name: :QuestionList

    has_many :polls,
      through: :questions_list,
      source: :poll

    has_many :answer_choices,
      primary_key: :id,
      foreign_key: :answer_choice_id,
      class_name: :AnswerChoice




end
