import 'package:flutter/widgets.dart';
import 'package:team_flag/flags/no_flag/no_flag_painter.dart';
import 'package:team_flag/flags/france/france_flag_painter.dart';
import 'package:team_flag/flags/brazil/brazil_flag_painter.dart';

enum TeamFlagType {
  // Europa
  albania('Albania', 'AL', 'ALB'),
  andorra('Andorra', 'AD', 'AND'),
  armenia('Armenia', 'AM', 'ARM'),
  austria('Austria', 'AT', 'AUT'),
  azerbaijan('Azerbaijan', 'AZ', 'AZE'),
  belarus('Belarus', 'BY', 'BLR'),
  belgium('Belgium', 'BE', 'BEL'),
  bosniaHerzegovina('Bosnia and Herzegovina', 'BA', 'BIH'),
  bulgaria('Bulgaria', 'BG', 'BUL'),
  croatia('Croatia', 'HR', 'CRO'),
  cyprus('Cyprus', 'CY', 'CYP'),
  czechia('Czechia', 'CZ', 'CZE'),
  denmark('Denmark', 'DK', 'DEN'),
  england('England', 'GB-ENG', 'ENG'),
  estonia('Estonia', 'EE', 'EST'),
  finland('Finland', 'FI', 'FIN'),
  france('France', 'FR', 'FRA'),
  georgia('Georgia', 'GE', 'GEO'),
  germany('Germany', 'DE', 'GER'),
  greece('Greece', 'GR', 'GRE'),
  hungary('Hungary', 'HU', 'HUN'),
  iceland('Iceland', 'IS', 'ISL'),
  ireland('Ireland', 'IE', 'IRL'),
  italy('Italy', 'IT', 'ITA'),
  kosovo('Kosovo', 'XK', 'KOS'),
  latvia('Latvia', 'LV', 'LVA'),
  lithuania('Lithuania', 'LT', 'LTU'),
  luxembourg('Luxembourg', 'LU', 'LUX'),
  malta('Malta', 'MT', 'MLT'),
  moldova('Moldova', 'MD', 'MDA'),
  montenegro('Montenegro', 'ME', 'MNE'),
  netherlands('Netherlands', 'NL', 'NED'),
  northMacedonia('North Macedonia', 'MK', 'MKD'),
  norway('Norway', 'NO', 'NOR'),
  poland('Poland', 'PL', 'POL'),
  portugal('Portugal', 'PT', 'POR'),
  romania('Romania', 'RO', 'ROU'),
  russia('Russia', 'RU', 'RUS'),
  sanMarino('San Marino', 'SM', 'SMR'),
  scotland('Scotland', 'GB-SCT', 'SCO'),
  serbia('Serbia', 'RS', 'SRB'),
  slovakia('Slovakia', 'SK', 'SVK'),
  slovenia('Slovenia', 'SI', 'SVN'),
  spain('Spain', 'ES', 'ESP'),
  sweden('Sweden', 'SE', 'SWE'),
  switzerland('Switzerland', 'CH', 'SUI'),
  turkey('Turkey', 'TR', 'TUR'),
  ukraine('Ukraine', 'UA', 'UKR'),
  wales('Wales', 'GB-WLS', 'WAL'),

  // América do Norte e Central
  canada('Canada', 'CA', 'CAN'),
  costaRica('Costa Rica', 'CR', 'CRC'),
  cuba('Cuba', 'CU', 'CUB'),
  dominicanRepublic('Dominican Republic', 'DO', 'DOM'),
  elSalvador('El Salvador', 'SV', 'SLV'),
  guatemala('Guatemala', 'GT', 'GUA'),
  haiti('Haiti', 'HT', 'HAI'),
  honduras('Honduras', 'HN', 'HON'),
  jamaica('Jamaica', 'JM', 'JAM'),
  mexico('Mexico', 'MX', 'MEX'),
  nicaragua('Nicaragua', 'NI', 'NCA'),
  panama('Panama', 'PA', 'PAN'),
  trinidadTobago('Trinidad and Tobago', 'TT', 'TRI'),
  unitedStates('United States', 'US', 'USA'),

  // América do Sul
  argentina('Argentina', 'AR', 'ARG'),
  bolivia('Bolivia', 'BO', 'BOL'),
  brazil('Brazil', 'BR', 'BRA'),
  chile('Chile', 'CL', 'CHI'),
  colombia('Colombia', 'CO', 'COL'),
  ecuador('Ecuador', 'EC', 'ECU'),
  guyana('Guyana', 'GY', 'GUY'),
  paraguay('Paraguay', 'PY', 'PAR'),
  peru('Peru', 'PE', 'PER'),
  suriname('Suriname', 'SR', 'SUR'),
  uruguay('Uruguay', 'UY', 'URU'),
  venezuela('Venezuela', 'VE', 'VEN'),

  // África
  algeria('Algeria', 'DZ', 'ALG'),
  angola('Angola', 'AO', 'ANG'),
  benin('Benin', 'BJ', 'BEN'),
  botswana('Botswana', 'BW', 'BOT'),
  burkinaFaso('Burkina Faso', 'BF', 'BFA'),
  burundi('Burundi', 'BI', 'BDI'),
  cameroon('Cameroon', 'CM', 'CMR'),
  capeVerde('Cape Verde', 'CV', 'CPV'),
  centralAfricanRepublic('Central African Republic', 'CF', 'CTA'),
  chad('Chad', 'TD', 'CHA'),
  comoros('Comoros', 'KM', 'COM'),
  congo('Congo', 'CG', 'CGO'),
  congoKinshasa('DR Congo', 'CD', 'COD'),
  coteDivoire('Côte d\'Ivoire', 'CI', 'CIV'),
  djibouti('Djibouti', 'DJ', 'DJI'),
  egypt('Egypt', 'EG', 'EGY'),
  equatorialGuinea('Equatorial Guinea', 'GQ', 'EQG'),
  eritrea('Eritrea', 'ER', 'ERI'),
  eswatini('Eswatini', 'SZ', 'SWZ'),
  ethiopia('Ethiopia', 'ET', 'ETH'),
  gabon('Gabon', 'GA', 'GAB'),
  gambia('Gambia', 'GM', 'GAM'),
  ghana('Ghana', 'GH', 'GHA'),
  guinea('Guinea', 'GN', 'GUI'),
  guineaBissau('Guinea-Bissau', 'GW', 'GNB'),
  kenya('Kenya', 'KE', 'KEN'),
  lesotho('Lesotho', 'LS', 'LES'),
  liberia('Liberia', 'LR', 'LBR'),
  libya('Libya', 'LY', 'LBY'),
  madagascar('Madagascar', 'MG', 'MAD'),
  malawi('Malawi', 'MW', 'MWI'),
  mali('Mali', 'ML', 'MLI'),
  mauritania('Mauritania', 'MR', 'MTN'),
  mauritius('Mauritius', 'MU', 'MRI'),
  morocco('Morocco', 'MA', 'MAR'),
  mozambique('Mozambique', 'MZ', 'MOZ'),
  namibia('Namibia', 'NA', 'NAM'),
  niger('Niger', 'NE', 'NIG'),
  nigeria('Nigeria', 'NG', 'NGA'),
  rwanda('Rwanda', 'RW', 'RWA'),
  saoTomePrincipe('São Tomé and Príncipe', 'ST', 'STP'),
  senegal('Senegal', 'SN', 'SEN'),
  seychelles('Seychelles', 'SC', 'SEY'),
  sierraLeone('Sierra Leone', 'SL', 'SLE'),
  somalia('Somalia', 'SO', 'SOM'),
  southAfrica('South Africa', 'ZA', 'RSA'),
  southSudan('South Sudan', 'SS', 'SSD'),
  sudan('Sudan', 'SD', 'SUD'),
  tanzania('Tanzania', 'TZ', 'TAN'),
  togo('Togo', 'TG', 'TOG'),
  tunisia('Tunisia', 'TN', 'TUN'),
  uganda('Uganda', 'UG', 'UGA'),
  zambia('Zambia', 'ZM', 'ZAM'),
  zimbabwe('Zimbabwe', 'ZW', 'ZIM'),

  // Ásia
  afghanistan('Afghanistan', 'AF', 'AFG'),
  bahrain('Bahrain', 'BH', 'BHR'),
  bangladesh('Bangladesh', 'BD', 'BAN'),
  bhutan('Bhutan', 'BT', 'BHU'),
  brunei('Brunei', 'BN', 'BRU'),
  cambodia('Cambodia', 'KH', 'CAM'),
  china('China', 'CN', 'CHN'),
  hongKong('Hong Kong', 'HK', 'HKG'),
  india('India', 'IN', 'IND'),
  indonesia('Indonesia', 'ID', 'IDN'),
  iran('Iran', 'IR', 'IRN'),
  iraq('Iraq', 'IQ', 'IRQ'),
  israel('Israel', 'IL', 'ISR'),
  japan('Japan', 'JP', 'JPN'),
  jordan('Jordan', 'JO', 'JOR'),
  kazakhstan('Kazakhstan', 'KZ', 'KAZ'),
  kuwait('Kuwait', 'KW', 'KUW'),
  kyrgyzstan('Kyrgyzstan', 'KG', 'KGZ'),
  laos('Laos', 'LA', 'LAO'),
  lebanon('Lebanon', 'LB', 'LBN'),
  malaysia('Malaysia', 'MY', 'MAS'),
  maldives('Maldives', 'MV', 'MDV'),
  mongolia('Mongolia', 'MN', 'MNG'),
  myanmar('Myanmar', 'MM', 'MYA'),
  nepal('Nepal', 'NP', 'NEP'),
  northKorea('North Korea', 'KP', 'PRK'),
  oman('Oman', 'OM', 'OMA'),
  pakistan('Pakistan', 'PK', 'PAK'),
  palestine('Palestine', 'PS', 'PLE'),
  philippines('Philippines', 'PH', 'PHI'),
  qatar('Qatar', 'QA', 'QAT'),
  saudiArabia('Saudi Arabia', 'SA', 'KSA'),
  singapore('Singapore', 'SG', 'SIN'),
  southKorea('South Korea', 'KR', 'KOR'),
  sriLanka('Sri Lanka', 'LK', 'SRI'),
  syria('Syria', 'SY', 'SYR'),
  taiwan('Taiwan', 'TW', 'TPE'),
  tajikistan('Tajikistan', 'TJ', 'TJK'),
  thailand('Thailand', 'TH', 'THA'),
  timorLeste('Timor-Leste', 'TL', 'TLS'),
  turkmenistan('Turkmenistan', 'TM', 'TKM'),
  unitedArabEmirates('United Arab Emirates', 'AE', 'UAE'),
  uzbekistan('Uzbekistan', 'UZ', 'UZB'),
  vietnam('Vietnam', 'VN', 'VIE'),
  yemen('Yemen', 'YE', 'YEM'),

  // Oceania
  australia('Australia', 'AU', 'AUS'),
  fiji('Fiji', 'FJ', 'FIJ'),
  newZealand('New Zealand', 'NZ', 'NZL'),
  papuaNewGuinea('Papua New Guinea', 'PG', 'PNG'),
  samoa('Samoa', 'WS', 'SAM'),
  solomonIslands('Solomon Islands', 'SB', 'SOL'),
  tonga('Tonga', 'TO', 'TGA'),
  vanuatu('Vanuatu', 'VU', 'VAN');

  final String name;
  final String code;
  final String teamCode;

  const TeamFlagType(this.name, this.code, this.teamCode);

  static CustomPainter getPainter(TeamFlagType type) {
    switch (type) {
      case TeamFlagType.brazil:
        return BrazilFlagPainter();
      case TeamFlagType.france:
        return FranceFlagPainter();
      default:
        return NoFlagPainter();
    }
  }
}

class TeamFlag extends StatelessWidget {
  final TeamFlagType type;
  final double width;

  const TeamFlag({super.key, required this.type, required this.width});

  double _calculateHeight(double width) {
    return (width / 3) * 2;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(size: Size(width, _calculateHeight(width)), painter: TeamFlagType.getPainter(type));
  }
}
