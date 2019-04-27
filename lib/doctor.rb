class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all<< self
  end
  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    appointments_array
   end

   def appointments_array
     Appointment.all.select{|appointment| appointment.doctor == self}
   end

   def self.all
     @@all
   end
   def patients
   appointments.map do |appt|
     appt.patient
   end
 end 

end
0
