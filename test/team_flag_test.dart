import 'package:flutter_test/flutter_test.dart';
import 'package:team_flag/flags/france/france_flag_painter.dart';

import 'package:team_flag/team_flag.dart';

void main() {
  test('should return the correct flag painter', () {
    expect(TeamFlagType.getPainter(TeamFlagType.france), isA<FranceFlagPainter>());
  });
}
