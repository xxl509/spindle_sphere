class SpindleSignal
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Extensions::DateTime
  include Mongoid::Timestamps

  field :spindle_id, type: Float
  field :channel_label, type: String
  field :fragments, type: String
end
