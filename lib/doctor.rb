require "pry"
class Doctor
    attr_reader :name, :specialty
    @@all=[]
        def initialize(name, specialty="general")
            @name =name
            @specialty =specialty
            Doctor.all << self
        end
        def self.all
            @@all
        end
    
        def new_appointment(date, patient)
            Appointment.new(date, self, patient)
        end
    
        def appointment_list
            Appointment.all.select {|appointment| appointment.doctor ==self}
        end
        
        def patients
            appointment_list.map {|appointment| appointment.patient}
        end

end

