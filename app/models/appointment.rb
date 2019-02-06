class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def readable_time
    t = appointment_datetime.to_formatted_s(:long).to_s[0..-6] +'at '
    t+= appointment_datetime.to_formatted_s(:long).to_s[-6..-1]

  end

end
