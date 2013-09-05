class Dinamica < ActiveRecord::Base
  has_and_belongs_to_many :videos
  attr_accessible :material, :nome, :objetivos, :participantes
end
