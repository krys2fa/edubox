class DashboardController < ApplicationController
    before_action :authenticate_user!

    def index
        #  Applications section
        current_user.admin? ? @applications_count = Application.count 
            : @applications_count = current_user.applications.count

        current_user.admin? ? @processed_applications = Application.where("processed is true") 
            : @processed_applications = current_user.applications.where("processed is true")

        @processed_count = @processed_applications.count

        current_user.admin? ? @unprocessed_applications = Application.where("processed is false")
            : @unprocessed_applications = current_user.applications.where("processed is false")

        @unprocessed_count = @unprocessed_applications.count

        current_user.admin? ? @delivered_applications = Application.where("delivered is true")
            : @delivered_applications = current_user.applications.where("delivered is true")

        @delivered_count = @delivered_applications.count

        current_user.admin? ? @undelivered_applications = Application.where("delivered is false")
            : @undelivered_applications = current_user.applications.where("delivered is false")

        @undelivered_count = @undelivered_applications.count

        # Institutions section
        @institutions_count = Institution.count
        @applications_per_institutions = Institution.left_joins(:applications).
        distinct.select('institutions.name, COUNT(applications.*) AS applications_count' ).group('institutions.id')

        # Documents section
        @documents_count = Document.count
        @documents = Document.all

        @agents = User.where("agent is true")
        @agents_count = @agents.count

        @admins = User.where("admin is true")
        @admins_count = @admins.count

        @customer = User.where("admin = ? and agent = ? ", false, false)
        @customer_count = User.where("admin = ? and agent = ? ", false, false).count
        @active_customer_count = @customer.where(:last_sign_in_at => 3.month.ago.beginning_of_month..0.month.ago.end_of_month).count
        @inactive_customer_count = @customer.where.not(:last_sign_in_at => 3.month.ago.beginning_of_month..0.month.ago.end_of_month).count




        
    end

end
