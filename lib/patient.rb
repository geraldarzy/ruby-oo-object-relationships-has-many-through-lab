

require 'pry'

class Patient
    attr_accessor :name
    attr_reader

    @@all = []

    def initialize(name)
        @name = name
        save

    end

    def new_appointment(date,doctor)
        Appointment.new(date,self,doctor)

    end

    def appointments
        Appointment.all.select {|x|x.patient == self}
    end

    def self.all
        @@all
    end 

    def save
        self.class.all << self
    end

    def doctors
        appointments.map {|x|x.doctor}
    end



end
