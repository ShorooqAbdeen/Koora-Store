import 'package:flutter/material.dart';
class CardModel{
  String _image;
  String _descrebtion;
  String _detailes;
  String _priceBef;
  String _priceAft;

 CardModel(this._image, this._descrebtion, this._detailes, this._priceBef,
      this._priceAft);

 String get priceAft => _priceAft;

  set priceAft(String value) {
    _priceAft = value;
  }

  String get priceBef => _priceBef;

  set priceBef(String value) {
    _priceBef = value;
  }

  String get detailes => _detailes;

  set detailes(String value) {
    _detailes = value;
  }

  String get descrebtion => _descrebtion;

  set descrebtion(String value) {
    _descrebtion = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }
}