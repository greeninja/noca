class IncidentNotifier < ApplicationMailer
  default :from => 'test@test.com'
  
  def send_incident_update(incident)
    @incident = incident
    @email = 'root@localhost'
    mail( :to => 'root@localhost',
      :subject => 'Test email')
  end
end
