class NoteSerializer < ActiveModel::Serializer
  attributes :id, :description, :urgency, :status, :date, :time, :task_id, :user_id
end
