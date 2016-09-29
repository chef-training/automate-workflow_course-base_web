# ##Inspec tests for base_web cookbook

control 'web-1.0' do
  impact 1.0
  title 'Web Server'
  desc 'Web server should answer with 200 reponse'

  describe bash 'curl localhost' do
    its('exit_status') { should eq 0 }
  end
end
