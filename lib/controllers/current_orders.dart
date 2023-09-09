import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tawseel/class/order.dart';
import 'package:tawseel/core/enums.dart';

class CurrentOrders extends GetxController {
  static final CurrentOrders inst = CurrentOrders();

  RxList<Order> currentAllOrders = [
    Order(OrderState.onTheWay, 25613, 'شارع 44 - السبتية - القاهرة',
        DateTime.now(), 40),
    Order(OrderState.delivered, 25213, 'شارع 44 - السبتية - القاهرة',
        DateTime.now(), 32),
    Order(OrderState.canceled, 25213, 'شارع 44 - السبتية - القاهرة',
        DateTime.now(), 26),
  ].obs;

  RxList<OrderState> currentFilteredOrders = OrderState.values.obs;

  RxMap<String, int> newOrders = {
    "بيتزا شيش طاووق - حار": 250,
    "كريب شيش طاووق": 60,
    "برجر لحوم - حار": 60,
  }.obs;
  RxBool showNewOrderContainer = true.obs;
  Rx<TextEditingController> newOrderNameController =
      TextEditingController().obs;
  Rx<TextEditingController> newOrderPriceController =
      TextEditingController().obs;
}
