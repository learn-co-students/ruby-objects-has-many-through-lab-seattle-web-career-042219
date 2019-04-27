class Patient
attr_accessor :name
@@all = []
def initialize(name)
  @name = name
  @@all<< self
end
def self.all
  @@all
end

def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

def new_appointment(date, doctor)
  Appointment.new(date, self, doctor)
end

def doctors
  appointments_array.map{|appointment| appointment.date}
end

def appointments_array
  Appointment.all.select{|appointment| appointment.patient == self}
end
end
