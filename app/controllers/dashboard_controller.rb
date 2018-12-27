class DashboardController < ApplicationController
    before_action :authenticate_user!

    def index

        @applications_count = Application.count
        @processed_applications = Application.where("processed is true")
        @processed_count = @processed_applications.count
        @unprocessed_applications = Application.where("processed is false")
        @unprocessed_count = @unprocessed_applications.count
        @delivered_applications = Application.where("delivered is true")
        @delivered_count = @delivered_applications.count
        @undelivered_applications = Application.where("delivered is false")
        @undelivered_count = @undelivered_applications.count

        @institutions_count = Institution.count
        @applications_per_institutions = Institution.left_joins(:applications).
        distinct.select('institutions.name, COUNT(applications.*) AS applications_count' ).group('institutions.id')

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
