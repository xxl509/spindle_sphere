class SpindleSubtype
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Extensions::DateTime
  include Mongoid::Timestamps

  field :cluster_id, type: Integer
  field :cluster_no, type: String
  field :count, type: Integer
  field :dominant_freq_avg, type: String
  field :dominant_freq_std, type: String
  field :channel, type: String
  field :duration_avg, type: String
  field :duration_std, type: String
  field :amplitude_avg, type: String
  field :amplitude_std, type: String
  field :ton_avg, type: String
  field :ton_std, type: String
  field :center, type: Integer

  validates :cluster_id, uniqueness: true
end
