console.log('Hello from Order create page .js');
    
$(document).on('click', function(event) {

  if ($("#order_unit_of_order").val() != 0 && $("#order_order_product_price").val() != 0) {
    var order_unit = $("#order_unit_of_order").val();
    var product_price = $("#order_order_product_price").val();
    var total_amount = order_unit * product_price
    $("#order_total_amount").val(total_amount);
  } else if ($("#order_unit_of_order").val() == 0 || $("#order_order_product_price").val() == 0 ) {
    $("#order_total_amount").val(0);
    $("#order_balance_amount").val('');
    $("#order_paid_amount").val(0);
  }

  if ($("#order_total_amount").val() > 0) {
    var order_total_amount = $("#order_total_amount").val();
    var order_paid_amount = $("#order_paid_amount").val();
    var balnce_amount = order_total_amount - order_paid_amount
    $("#order_balance_amount").val(balnce_amount);
  }

  $('input[id=order_total_amount]').prop('readonly', true);
  $('input[id=order_balance_amount]').prop('readonly', true);

  $('input[id=order_customer_name]').prop('readonly', true);
  $('input[id=order_email]').prop('readonly', true);
  $('input[id=order_mobile_no]').prop('readonly', true);

});