class Doctor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |i| i.doctor == self }
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        array = []
        Appointment.all.each do |i|
            array << i.patient if i.doctor == self
        end
        array
    end

end