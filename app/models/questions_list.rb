# == Schema Information
#
# Table name: questions_lists
#
#  id          :integer          not null, primary key
#  poll_id     :integer          not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class QuestionsList < ApplicationRecord
end
