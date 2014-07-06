require 'rake'
require 'pathname'
require 'rainbow'

task :default => ['dev:validate']

namespace :dev do
  desc 'Create the base system'
  task :create do
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
      system "qemu-img convert -c -f raw -O qcow2 output-qemu/#{systeme}#{version}-#{environnement}-#{hypervisor}.raw output-qemu/#{systeme}#{version}-#{environnement}-#{hypervisor}.qcow2"
      system "mv output-qemu/#{systeme}#{version}-#{environnement}-#{hypervisor}.qcow2 ."
      system "rm -fr output-qemu"
    end
  end
end

task :list do
  system "ls -1 templates/*.json"
end

