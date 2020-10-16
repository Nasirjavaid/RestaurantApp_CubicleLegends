import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retaurant_app/bloc/dashboardBloc/dashBoardState.dart';
import 'package:retaurant_app/bloc/dashboardBloc/dashboardEvent.dart';
import 'package:retaurant_app/model/foodProduct.dart';

import 'package:retaurant_app/repository/dashboardRepository.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardSate> {
  @override
  DashboardSate get initialState => InitialDashboardState();

  DashboardRepository dashboardRepository = DashboardRepository();
  FoodProduct foodProduct;

  @override
  Stream<DashboardSate> mapEventToState(DashboardEvent event) async* {
    try {
      if (event is GetDashBoardData) {
        foodProduct = FoodProduct();

        yield FetchingDashboadDataInProgressDashboardState();
        foodProduct = await dashboardRepository.getFoodProduct();

        if (foodProduct.data.currencyIcon != null ||
            foodProduct.data.foodinfo.length != 0) {
          yield FetchedDashboadDataSuccessfulyDashboardState(foodProduct: foodProduct);
        }

        if (foodProduct.data.currencyIcon == null) {
          yield FailedToFetchDashboadDataDashboardState();
        }
      }
    } catch (ex) {
      yield FailedToFetchDashboadDataDashboardState();
    }
  }
}
