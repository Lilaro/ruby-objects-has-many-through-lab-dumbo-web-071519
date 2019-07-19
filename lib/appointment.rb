class Appointment
    attr_accessor :date, :patient_id, :doctor_id
    @@al = []

    def initialize(date, patient_id, doctor_id)
        @date = date
        @patient_id = patient_id
        @doctor_id = doctor_id
        @@all << self
    end

    def self.all
        @@all
    end

end
