require "mkalias/version"

module Mkalias

  def self.new_alias(alias_name, command)
    bash_path = "#{File.expand_path('~')}/.bashrc"

    function_name = "mkalias_#{alias_name}"
    bash_function = "function #{function_name}(){ #{command}; }"
    bash_alias = "alias #{alias_name}='#{function_name}'"

    open(bash_path, 'a') do |file|
        file.puts("\n")
        file.puts(bash_alias)
        file.puts(bash_function)
    end
  end
end
