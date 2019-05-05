

class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment_obj|
      appointment_obj.doctor == self
    end
  end

  def patients
    appointments.collect do |appointment_obj|
      appointment_obj.patient
    end
  end
end
