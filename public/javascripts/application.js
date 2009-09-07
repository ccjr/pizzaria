function deliveryMethodSelected() {
  if ($F('order_delivery_method') == 'Pick up') {
    $('address').hide();
  } else {
    $('address').show();
  }
}