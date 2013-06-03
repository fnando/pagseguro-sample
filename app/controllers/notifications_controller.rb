class NotificationsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    transaction = PagSeguro::Transaction.find_by_code(params[:notificationCode])

    if transaction.errors.any?
      raise "notificationCode: #{params[:notificationCode]}\n#{transaction.errors.join("\n")}"
    else
      # Processa notificação, preferencialmente em background.
    end
  end
end
