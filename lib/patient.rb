require "pry"
class Patient
    attr_reader :name, :age
    @@all=[]
        def initialize(name, age=1)
            @name =name
            @age =age
            Patient.all << self
        end
        def self.all
            @@all
        end
def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
end

def appointment_list
    Appointment.all.select {|appointment| appointment.patient ==self}
end

def doctors
    appointment_list.map {|appointment| appointment.doctor}
end

end
