
title "See if the project and the machine exist and if the machine is running"

gcp_project_id = attribute("gcp_project_id")
gcp_machine_name = attribute("gcp_machine_name")
gcp_zone_type = attribute("gcp_zone_type")

control "GCP_Project_Machine" do                                                    
  impact 1.0                                                                          
  title "Ensure that the project and machine exist"                            
  desc "An optional description..."
  describe google_compute_project_info(project: gcp_project_id) do
    it { should exist }
  end
  describe google_compute_instance(project: gcp_project_id, zone: gcp_zone_type, name: gcp_machine_name) do
    it { should exist }
    its('status') { should eq 'RUNNING' }
  end
end
