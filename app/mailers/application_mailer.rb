class ApplicationMailer < ActionMailer::Base
  default from: "pamphilemkp@gmail.com"
  layout "mailer"

  def confirmation_instructions(record, token, opts={})
  headers["Custom-header"] = "Bar"
  opts[:subject] = "Confirmation instructions"
  opts[:from] = "pamphilemkp@gmail.com"
  super
end
end
