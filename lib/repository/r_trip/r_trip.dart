import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:wizh_test/core/errors/exception.dart';
import 'package:wizh_test/core/errors/failure.dart';
import 'package:wizh_test/core/models/main_response.dart';
import 'package:wizh_test/repository/r_trip/model/trip_model/trip_model.dart';

abstract class RTrip {
  Future<MainResponse<List<TripModel>>> getTrips();
}

class RITrip implements RTrip {
  @override
  Future<MainResponse<List<TripModel>>> getTrips() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final response = await rootBundle.loadString('assets/json/trip.json');
      final result = MainResponse<List<TripModel>>.fromJson(jsonDecode(response), (json) => (json['data'] as List).map((e) => TripModel.fromJson(e)).toList());
      return result;
    } on ServerException catch (err) {
      throw ServerFailure(message: err.message ?? '');
    } on ClientException catch (err) {
      throw ClientFailure(message: err.message ?? '');
    } on ConnectionException catch (err) {
      throw ConnectionFailure(message: err.message ?? '');
    } catch (err) {
      throw ServerFailure(message: err.toString());
    }
  }
}
