module ModuleExample

  MODULE_VALUE = 'constant value'
  MODULE_NAME = 'ModuleExample'

  def ModuleExample.sampleMethod
    puts 'ModuleExample name is:#{MODULE_NAME}'
  end

  def instanceMethod
    puts "ModuleInstance says:#{MODULE_NAME}"
  end
end