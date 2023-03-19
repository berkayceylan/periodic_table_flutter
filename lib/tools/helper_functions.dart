import 'package:flutter/material.dart';
import 'package:peridoic_table/components/element_color.dart';
import 'package:peridoic_table/element_class.dart';

import '../utils/contants.dart';

ElementColor getElementColor(ElementClass element){
  if(element.category.contains("post-transition metal")) {
    return postMetalColor;
  }
  if(element.category.contains("alkali metal")) {
    return alkaliMetalColor;
  }
  if(element.category.contains("nonmetal")) {
    return nonmetalColor;
  }
  if(element.category.contains("noble")) {
    return nobleGasColor;
  }
  if(element.category.contains("alkaline earth metal")) {
    return alkalineEarthlColor;
  }
  if(element.category.contains("metalloid")) {
    return semimetalColor;
  }
  if(element.category.contains("transition")) {
    return transitionMetalColor;
  }
  if(element.category.contains("lanthanide")) {
    return lanthanideColor;
  }
  if(element.category.contains("actinide")) {
    return actinideColor;
  }

  return alkaliMetalColor;
}

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}