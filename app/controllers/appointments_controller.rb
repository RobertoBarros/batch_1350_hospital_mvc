require_relative '../views/appointments_view'

class AppointmentsController
  def initialize(appointment_repository, doctor_repository, patient_repository)
    @appointment_repository = appointment_repository
    @doctor_repository = doctor_repository
    @patient_repository = patient_repository
    @view = AppointmentsView.new
    @doctors_view = DoctorsView.new
    @patients_view = PatientsView.new
  end

  def create
    # Perguntar qual o doctor
    doctors = @doctor_repository.all
    @doctors_view.list(doctors)
    # Selecionar o doctor
    index = @doctors_view.ask_index
    doctor = doctors[index]

    # Perguntar qual o patient
    patients = @patient_repository.all
    @patients_view.list(patients)

    # selecionar o patient
    index = @patients_view.ask_index
    patient = patients[index]

    # Perguntar a data
    date = @view.ask_date

    # Instanciar um appointment
    appointment = Appointment.new(date:, doctor:, patient:)

    # Salvar no appointment repository
    @appointment_repository.add(appointment)
  end

  def list
    appointments = @appointment_repository.all
    @view.list(appointments)
  end

end
