require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  context "validaciones del modelo" do
    context "nombres" do
      it { should validate_presence_of :nombres }
      it { should validate_length_of(:nombres).is_at_most(30) }
      it { should_not allow_value("123123").for(:nombres) }
      it { should allow_value("Pedro").for(:nombres) }
    end

    context "apellidos" do
      it { should validate_presence_of :apellidos }
      it { should validate_length_of(:apellidos).is_at_most(30) }
    end

    context "carrera" do
      it { should validate_presence_of :carrera }
    end

    context "carnet" do
      it { should validate_presence_of :carnet }
      it { should validate_uniqueness_of :carnet }
    end
  end
end
