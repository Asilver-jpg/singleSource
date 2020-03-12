require "pry"
require_relative './lib/patient'
require_relative './lib/doctor'
require_relative './lib/appointment'

d= Doctor.new("DR")

p= Patient.new("SAM")

a= Appointment.new("3/13", d, p)
binding.pry