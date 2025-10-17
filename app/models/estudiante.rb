class Estudiante < ApplicationRecord
  # Validaciones para :nombres
  validates :nombres, presence: true
  validates :nombres, length: { maximum: 30 }
  validates_format_of :nombres, with: /\A[a-zA-Z]+\z/, message: "solo permite letras"

  # Validaciones para :apellidos
  validates :apellidos, presence: true
  validates :apellidos, length: { maximum: 30 }

  # Validaciones para :carrera
  validates :carrera, presence: true

  # Validaciones para :carnet
  validates :carnet, presence: true
  validates :carnet, uniqueness: true
end
