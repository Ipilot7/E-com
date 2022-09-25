import 'dart:convert';
import 'dart:developer';

import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:milanas/data/models/product_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(HomeInitial());

  homeLoadData() async {
    try {
      emit(HomeSteteInProgress());

      var response = await get(Uri.parse('https://nodejsrestapiforshop.herokuapp.com/api/products'));
      if (response.statusCode == 200) {
        List<ProductModel> allProducts = [];
        List responseBody = jsonDecode(response.body);

        for (var item in responseBody) {
          allProducts.add(ProductModel.fromJson(item));
        }

        log(allProducts.toString());

        emit(HomeStateIsComplate(listPrducts: allProducts));
      }
    } on SocketException {
      emit(HomeStateIsFailed(showMessage: 'Connection Error'));
    } catch (e) {
      emit(HomeStateIsFailed(showMessage: '$e'));
    }
  }
}
