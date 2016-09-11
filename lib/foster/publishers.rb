require "yaml"

Foster::Base.class_eval do
  PUBLISHERS = YAML.load_file(File.join(File.dirname(__FILE__), "..", "..", "data", "publishers.yaml"))

  def publisher
    @publisher ||= PUBLISHERS[registration_group][registrant]
  end
end
