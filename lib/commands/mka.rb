require 'command'
require 'commands/new'
require 'commands/list'
require 'commands/show'
require 'commands/remove'
require 'commands/add_signal'
require 'commands/remove_signal'

# Command 'mkalias' implementation
class Mka < Command
  def self.options_messages
    ''
  end

  def self.usage_bottom
    %(  Attention: To make alias with args use #. Example:
             $ mkalias new [alias] "echo #1 #2 #3"
             - Then you can use: $ [alias] arg1 arg2 arg3
    )
  end

  def self.command_name
    'mkalias'
  end

  def self.parent
    nil
  end

  def self.childrens
    [New, List, Show, Remove, AddSignal, RemoveSignal]
  end
end
