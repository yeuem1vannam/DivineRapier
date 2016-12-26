require "thor"
require "divine_rapier"

module DivineRapier
  class CLI < Thor

    desc "Recognizing service name", "xxx"
    def fight! internal_cmds
      puts "docker-compose exec web #{internal_cmds}"
    end
  end
end
