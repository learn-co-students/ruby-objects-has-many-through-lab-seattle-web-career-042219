require 'pry'
class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    Appointment.all.map do |appointment|
      if appointment.doctor == self
        appointment.patient
      end
    end.flatten
  end

end
