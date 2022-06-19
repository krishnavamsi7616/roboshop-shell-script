frontend:
	@bash components/frontend.sh
mongodb:
	@bash @components/mongodb.sh
catalogue:
	@bash @components/catalogue.sh
user:
	@bash @components/user.sh
cart:
	@bash @components/cart.sh
mysql:
	@bash @components/mysql.sh
payment:
	@bash @components/payment.sh
shipping:
	@bash @components/shipping.sh
redis:
	@bash @components/redis.sh
rabbitmq:
	@bash @components/rabbitmq.sh
dispatch:
	@bash @components/dispatch.sh