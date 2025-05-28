class Spindle
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Extensions::DateTime
  include Mongoid::Timestamps

  field :patient_id, type: String
  field :fs, type: Float
  field :channel_num, type: Float
  field :spindle_id, type: Float
  field :duration, type: Float
  field :frequency, type: Float
  field :time_of_night, type: Float
  field :main_channel, type: String

  validates :spindle_id, uniqueness: true
end
