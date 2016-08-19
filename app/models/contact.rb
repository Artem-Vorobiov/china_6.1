class Contact < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file,      :attachment => true

  attribute :message
  attribute :nickname,  :captcha  => true
  attribute :phone

  def headers
    {
      :subject => "ChinaDanceTeam",
      :to => "artem-vorobiov_pavlovich@mail.ru",
      :from => %("#{name}" <#{email}>)
    }
  end
end