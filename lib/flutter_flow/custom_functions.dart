import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? shopprice(
  double? price,
  double? saleprice,
) {
  // price에서 price를 100으로 나누고 saleprice를 곱한 값을 뺀 값을 반환한다.
  if (price == null || saleprice == null) {
    return null;
  }
  return price - (price / 100 * saleprice);
}

double? ticketprice(
  double? price,
  double? saleprice,
) {
  // price에서 saleprice를 뺀 후, 그 값을 price로 나누어 100으로 곱한 값을 반환한다.
  if (price == null || saleprice == null) {
    return null;
  }
  return (price - saleprice) / price * 100;
}

int generateRandomCode() {
  return math.Random().nextInt(9000) + 1000;
}

int calculateNewScore(
  int currentScore,
  int currentValue,
  bool correct,
) {
  return currentScore + (correct ? 1 : -1) * currentValue;
}

int generateRandomOffset() {
  return math.Random().nextInt(10000);
}

bool isNotNullOrEmpty(String? question) {
  return question != null && question.isNotEmpty;
}

int? addallnumbers(
  int? number1,
  int? number2,
  int? number3,
  int? number4,
  int? number5,
  int? number6,
) {
  // add all numbers
  return number1! + number2! + number3! + number4! + number5! + number6!;
}

double? multiple(
  double? num1,
  double? num2,
) {
  // num1곱하기 num2 값을 반환한다.
  if (num1 == null || num2 == null) {
    return null;
  }
  return num1 * num2;
}
