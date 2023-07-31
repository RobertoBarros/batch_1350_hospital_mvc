class Room
  attr_reader :number, :capacity, :patients
  attr_accessor :id

  def initialize(attributes = {})
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @id = attributes[:id]
    @patients = []
  end

  def add_patient(patient)
    @patients << patient
    patient.room = self
  end

  # attr_accessor = attr_reader + attr_writer
  # attr_reader :number=
  # def number
  #   @number
  # end

  # atter_writer
  # def number(value)
  #   @number
  # end

end
