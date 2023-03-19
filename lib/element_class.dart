class ElementClass {
  final int number;
  final int xpos;
  final int ypos;
  final String symbol;
  final String phase;
  final String name;
  final double atomicMass;
  final String category;
  final int period;
  final int group;
  final String electronConfiguration;
  final String electronConfigurationSemantic;
  final String summary;
  final String discoveredBy;
  final String source;
  final String bohrModelImage;
  final String block;
  final String model_3D;

  ElementClass({
    required this.number,
    required this.xpos,
    required this.ypos,
    required this.symbol,
    required this.phase,
    required this.name,
    required this.atomicMass,
    required this.category,
    required this.period,
    required this.group,
    required this.electronConfiguration,
    required this.electronConfigurationSemantic,
    required this.summary,
    required this.discoveredBy,
    required this.source,
    required this.bohrModelImage,
    required this.block,
    required this.model_3D,
  });

  factory ElementClass.fromJson(Map<String, dynamic> json) {
    return ElementClass(
      number: json['number'] as int,
      xpos: json['xpos'] as int,
      ypos: json['ypos'] as int,
      symbol: json['symbol'] as String,
      phase: json['phase'] as String,
      name: json['name'] as String,
      atomicMass: json['atomic_mass'] as double,
      category: json['category'] as String,
      period: json['period'] as int,
      group: json['group'] as int,
      electronConfiguration: json['electron_configuration'] as String,
      electronConfigurationSemantic:
          json['electron_configuration_semantic'] as String,
      summary: json['summary'] as String,
      discoveredBy:
          json['discovered_by'] == null ? "" : json['discovered_by'] as String,
      source: json['source'] as String,
      bohrModelImage: json['bohr_model_image'] as String,
      block: json['block'] as String,
      model_3D: json["bohr_model_3d"] as String,
    );
  }
}
