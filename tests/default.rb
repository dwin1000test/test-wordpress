describe port(8080) do
  it { should be_listening }
  skip 'This is an example test, replace with your own test.'
end

if os[:family] == 'debian'
    describe package 'apache2' do
        it { should be_installed }
    end
end

describe command 'curl localhost' do
    its('stdout') { should match /Hello World/ }
end
