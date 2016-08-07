module PatientsHelper
  def full_name(params)
    "#{params.first_name}" << " " << "#{params.middle_name}" << " " << "#{params.last_name}"
  end

  def patient_age(params)
    "#{((Date.today - params.birthday) / 365).floor}"
  end

  def medical_record_number(params)
    mr_number = "mr"
    if "#{params.id}".to_i < 10
      mr_number << "00000" << "#{params.id}"
    elsif 10 <= "#{params.id}".to_i < 100
      mr_number << "0000" << "#{params.id}"
    elsif 100 <= "#{params.id}".to_i < 1000
      mr_number << "000" << "#{params.id}"
    elsif 1000 <= "#{params.id}".to_i < 10000
      mr_number << "00" << "#{params.id}"
    elsif 10000 <= "#{params.id}".to_i < 100000
      mr_number << "0" << "#{params.id}"
    else
      mr_number << "#{params.id}"
    end
  end
end
