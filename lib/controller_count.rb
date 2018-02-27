require "controller_count/version"

module ControllerCount
  CONTROLLER_REGEX = /^Processing by (?<controller>[^#]+)#(?<action>\w+)/

  def self.parse(log_str)
    match_data = log_str.match(CONTROLLER_REGEX)
  end

end
