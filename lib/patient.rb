require 'pry'

class Patient
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
        @doctors = []
        @patients = []
    end

    def self.all
        @@all
    end
    def appointments
        Appointment.all.select{|doctor|
            doctor.patient == self
        }
    end
    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)  
    end

    def doctors
        self.appointments.map{|doctor|
            doctor.date
        }
    end
end
