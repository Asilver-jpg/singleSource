class Appointment

    attr_accessor :doctor, :patient, :date
@@all=[]
    def initialize(date, doctor, patient)
            @date = date
            @doctor = doctor
            @patient=patient
            Appointment.all << self
    end

    def self.all 
        @@all
    end



end