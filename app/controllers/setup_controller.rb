class SetupController < Wicked::WizardController

  steps :company

  def show
    case step
      when :company
        @company = Account.new
        @company.email = current_user.email
    end
    render_wizard
  end

  def update
    case step
      when :company
        @company = Account.new(params[:account])
        @company.user_id = current_user.id
        @company.save!
        skip_step
    end
    render_wizard
  end

  def finish_wizard_path
    root_path
  end
end
