class Mantencioncorrectiva < ApplicationRecord
  belongs_to :area
  belongs_to :sector
  belongs_to :equipo
end
