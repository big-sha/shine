describe User  do
  describe "email" do
    let(:user) {
      User.create!(email: "foo@example.com",
        password: "qwertyuiop",
        password_confirmation: "qwertyuiop")
    }
    it "aboslutely prevents invalid email addresses" do
      expect {
        user.update_attributes(:email, "foo@bar.com")
      }.to raise_error(ActiveRecord::StatementInvalid,
        /email_must_be_company_email/i)
    end
  end
end