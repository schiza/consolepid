module Consolepid
  def self.print_console_pid
    puts "Console process PID is: #{Process.pid}"
  end
end

if defined?(Rails)
  class Consolepid::Railtie < Rails::Railtie
    console do
      Consolepid.print_console_pid
    end
  end
elsif defined?(Pry)
  Pry.config.hooks.add_hook(:when_started, :print_console_pid) do
    Consolepid.print_console_pid
  end
elsif defined?(IRB)
  Consolepid.print_console_pid
end
