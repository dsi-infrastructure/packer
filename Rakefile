require 'rake'
require 'rainbow'

task :default => ['list']

namespace :dev do
  desc 'Build the base system'
  task :build do
    environnement = 'dev'
    systeme = ENV['systeme']
    hypervisor = ENV['hypervisor']
    version = ENV['version']
    template = "#{systeme}#{version}-#{environnement}-#{hypervisor}.json"

    puts Rainbow("Validating #{template}").green
    unless system "packer validate templates/#{template}"
      puts Rainbow("#{template} is not a valid packer template").red
      fail "#{template} is not a valid packer template"
    end

    puts Rainbow("Building #{template}").green
    system "packer build templates/#{template}"

    if hypervisor === "kvm"
      puts Rainbow("Convert KVM raw to qcow2").green
      system "qemu-img convert -c -f raw -O qcow2 output-qemu/#{systeme}#{version}-#{environnement}-#{hypervisor}.raw output-qemu/#{systeme}-#{version}-#{environnement}-#{hypervisor}.qcow2"
      system "mv output-qemu/#{systeme}-#{version}-#{environnement}-#{hypervisor}.qcow2 ."
      system "rm -fr output-qemu"
    end
  end
end

namespace :prod do
  desc 'Build the base system'
  task :build do
    environnement = 'prod'
    systeme = ENV['systeme']
    hypervisor = ENV['hypervisor']
    version = ENV['version']
    template = "#{systeme}#{version}-#{environnement}-#{hypervisor}.json"

    puts Rainbow("Validating #{template}").green
    unless system "packer validate templates/#{template}"
      puts Rainbow("#{template} is not a valid packer template").red
      fail "#{template} is not a valid packer template"
    end

    puts Rainbow("Building #{template}").green
    system "packer build templates/#{template}"

    # Pour Vsphere
    if hypervisor === "vmware"
      puts Rainbow("Creating OVA").green
      system "ovftool output-vmware-iso/packer-vmware-iso.vmx #{systeme}-#{version}-#{environnement}-#{hypervisor}.ova && chmod 644 #{systeme}-#{version}-#{environnement}-#{hypervisor}.ova && rm -fr output-vmware-iso"
    end

    # Pour Openstack
    if hypervisor === "kvm"
      puts Rainbow("Convert KVM raw to qcow2").green
      system "qemu-img convert -c -f raw -O qcow2 output-qemu/#{systeme}#{version}-#{environnement}-#{hypervisor}.raw output-qemu/#{systeme}-#{version}-#{environnement}-#{hypervisor}.qcow2"
      system "mv output-qemu/#{systeme}-#{version}-#{environnement}-#{hypervisor}.qcow2 ."
      system "rm -fr output-qemu"
    end
  end
end

task :list do
  system "ls -1 templates/*.json"
end

desc "Deploy images via SCP"
task :deploy do
  target = "repository.srv.gov.pf"
  src_dir = "deploy/*"
  dst_dir = "/var/www/os/"
  scp_user = ENV['user']

  puts Rainbow("Deploying website via SFTP").green
  system("mv -f *.box *.qcow2 *.ova deploy/")
  system("scp #{src_dir} #{scp_user}@#{target}:#{dst_dir}")
end