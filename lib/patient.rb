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

    def appointments
        Appointment.all.select do |app|
            app.patient == self
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.map do |app|
            app.doctor
        end
    end
end