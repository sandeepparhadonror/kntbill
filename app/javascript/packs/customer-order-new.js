console.log('Hello from Order create page .js');
    
$(document).on('click', function(event) {

  if ($("#order_unit_of_order").val() != 0 && $("#order_order_product_price").val() != 0) {
    var order_unit = $("#order_unit_of_order").val();
    var product_price = $("#order_order_product_price").val();
    var transport_amount = $("#order_transport_amount").val();
    var total_amount = Number(order_unit * product_price) + Number(transport_amount)
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

  if ($("#order_balance_amount").val() < 0 ) {
    console.log('Paid amount can not be max to total amount');
    $('#order_balance_amount').css('background-color','red');
  }


  $('input[id=order_total_amount]').prop('readonly', true);
  $('input[id=order_balance_amount]').prop('readonly', true);

  $('input[id=order_customer_name]').prop('readonly', true);
  $('input[id=order_email]').prop('readonly', true);
  $('input[id=order_mobile_no]').prop('readonly', true);

});