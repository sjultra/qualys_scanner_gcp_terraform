
=begin
Copyright 2020 SJULTRA, inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
=end
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
