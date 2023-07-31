class Patient
  attr_reader :name, :age
  attr_accessor :room, :id

  def initialize(attributes = {})
    @name = attributes[:name]
    @age = attributes[:age]
    @id = attributes[:id]
  end
end

# roberto = Patient.new({ name: 'Roberto', age: 18 })
# roberto = Patient.new(name: 'Roberto', age: 18)
# roberto = Patient.new name: 'Roberto', age: 18
