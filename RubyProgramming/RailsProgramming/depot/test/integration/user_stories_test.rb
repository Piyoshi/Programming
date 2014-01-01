require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
  fixtures :products

  # あるユーザが、オンラインストアのインデックスページに訪れます。
  # ユーザは、商品を選択して、カートに入れます。その後、ユーザは
  # チェックアウトフォームに詳細を入力してチェックアウトします。
  # チェックアウトフォームを送信すると、カートに追加された商品に
  # 対応する１つの品目とともに、ユーザの情報が含まれた
  # 作成されます。

  # # Replace this with your real tests.
  # test "the truth" do
  #   assert true
  # end

  test "buying a products" do

	# 前準備
  	LineItem.delete_all
	Order.delete_all
	ruby_book = products(:ruby)

	# 「ユーザがオンラインストアのインデックスページを訪れる」
    get "/"
	assert_response :success
	assert_template "index"

	# 「ユーザは、商品を選択して、カートに入れる」
	xml_http_request :post, '/line_items', product_id: ruby_book.id
	assert_response :success

	cart = Cart.find(session[:cart_id])
	assert_equal 1, cart.line_items.size
	assert_equal ruby_book, cart.line_items[0].product

	# 「ユーザは・・・・・チェックアウトする」
    get "/orders/new"
	assert_response :success
	assert_template "new"

    post_via_redirect "/orders",
			order: { name:		"Dave Thomas",
					 address:	"123 The Street",
					 email:		"dave@example.com",
					 pay_type:	"Check"
	}
	assert_response :success
	assert_template "index"
	cart = Cart.find(session[:cart_id])
	assert_equal 0, cart.line_items.size

	orders = Order.all
	assert_equal 1, orders.size
	order = orders[0]

	assert_equal "Dave Thomas",			order.name
	assert_equal "123 The Street",		order.address
	assert_equal "dave@example.com",	order.email
	assert_equal "Check",				order.pay_type

	assert_equal 1, order.line_items.size
	line_item = order.line_items[0]
	assert_equal ruby_book, line_item.product

=begin rdoc
		mail = ActionMailer::Base.deliveries.last
	assert_equal ["dave@example.com"], mail.to
	assert_equal 'Sam Ruby <depot@example.com>', mail[:from].value
	assert_equal "Pragmatic Store Order Confirmation", mail.subject


=end
  end
end
