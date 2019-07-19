require 'pry'

class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor_id, date)
        Appointment.new(date, self, doctor_id)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient_id == self
        end
    end

    def doctors
        appointments.map do |appt|
            appt.doctor_id
        end
    end

end

