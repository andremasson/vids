class Video < ActiveRecord::Base
  has_and_belongs_to_many :dinamicas
  attr_accessible :autor, :duracao, :resumo, :titulo
end
