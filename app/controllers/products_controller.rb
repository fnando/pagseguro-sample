class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def checkout
    @product = Product.find(params[:product_id])

    payment = PagSeguro::PaymentRequest.new
    payment.abandon_url = root_url(r: "abandoned")
    payment.notification_url = notifications_url
    payment.redirect_url = processing_url

    payment.items << {
      id: @product.id,
      description: @product.title,
      amount: @product.price,
      weight: @product.weight
    }

    response = payment.register

    if response.errors.any?
      raise response.errors.join("\n")
    else
      redirect_to response.url
    end
  end
end
