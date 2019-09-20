class Patient

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
        Appointment.all.select { |i| i.patient == self }
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def doctors
        array = []
        Appointment.all.each do |i|
            array << i.doctor if i.patient == self
        end
        array
    end

end