class Appointment

    @@all = []

    attr_accessor :date, :patient, :doctor

    def initialize(date, patient, docto)
        @date = date
        @patient = patient
        @doctor = docto

        @@all << self
    end

    def self.all
        @@all
    end

end