class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient_id)
        Appointment.new(date, patient_id, self)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor_id == self
        end
    end

    def patients
        appointments.map do |appt|
            appt.patient_id
        end
    end



end