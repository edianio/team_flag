# Team Flag 🌍

Um pacote Flutter que fornece bandeiras de seleções e países de todo o mundo, desenhadas usando CustomPainter para garantir performance e qualidade vetorial em qualquer tamanho.

## 📋 Características

- ✅ **195 países** disponíveis organizados por continente
- 🎨 **Bandeiras vetoriais** desenhadas com CustomPainter (sem imagens)
- 📐 **Tamanhos personalizáveis** sem perda de qualidade
- 🔵 **Suporte para bandeiras arredondadas** (circulares)
- 🌐 **Códigos internacionais** (ISO e FIFA)
- ⚡ **Performance otimizada** sem uso de assets de imagem
- 🎯 **Fácil integração** em qualquer projeto Flutter

## 🚀 Instalação

Adicione o pacote ao seu `pubspec.yaml`:

```yaml
dependencies:
  team_flag: ^0.0.1
```

Ou instale via terminal:

```bash
flutter pub add team_flag
```

## 💻 Uso

### Exemplo Básico

```dart
import 'package:flutter/material.dart';
import 'package:team_flag/team_flag.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TeamFlag(
          type: TeamFlagType.brazil,
          width: 200,
        ),
      ),
    );
  }
}
```

### Bandeira Circular

```dart
TeamFlag(
  type: TeamFlagType.france,
  width: 100,
  isRounded: true, // Exibe a bandeira em formato circular
)
```

### Lista de Bandeiras

```dart
ListView.builder(
  itemCount: TeamFlagType.values.length,
  itemBuilder: (context, index) {
    final flag = TeamFlagType.values[index];
    return ListTile(
      leading: TeamFlag(
        type: flag,
        width: 60,
      ),
      title: Text(flag.name),
      subtitle: Text('${flag.code} - ${flag.teamCode}'),
    );
  },
)
```

### Acessando Informações do País

```dart
final country = TeamFlagType.brazil;

print(country.name);      // "Brazil"
print(country.code);      // "BR" (ISO 3166-1 alpha-2)
print(country.teamCode);  // "BRA" (Código FIFA de 3 letras)
```

## 🌍 Países Disponíveis

O pacote inclui **195 países** organizados por continente:

### Europa (46 países)
Albania, Andorra, Armênia, Áustria, Azerbaijão, Belarus, Bélgica, Bósnia e Herzegovina, Bulgária, Croácia, Chipre, Tchéquia, Dinamarca, Inglaterra, Estônia, Finlândia, França, Geórgia, Alemanha, Grécia, Hungria, Islândia, Irlanda, Itália, Kosovo, Letônia, Lituânia, Luxemburgo, Malta, Moldávia, Montenegro, Holanda, Macedônia do Norte, Noruega, Polônia, Portugal, Romênia, Rússia, San Marino, Escócia, Sérvia, Eslováquia, Eslovênia, Espanha, Suécia, Suíça, Turquia, Ucrânia, País de Gales

### Américas (26 países)
Argentina, Bolívia, Brasil, Canadá, Chile, Colômbia, Costa Rica, Cuba, República Dominicana, Equador, El Salvador, Guatemala, Guiana, Haiti, Honduras, Jamaica, México, Nicarágua, Panamá, Paraguai, Peru, Suriname, Trinidad e Tobago, Estados Unidos, Uruguai, Venezuela

### África (54 países)
Argélia, Angola, Benin, Botsuana, Burkina Faso, Burundi, Camarões, Cabo Verde, República Centro-Africana, Chade, Comores, Congo, RD Congo, Costa do Marfim, Djibuti, Egito, Guiné Equatorial, Eritreia, Essuatíni, Etiópia, Gabão, Gâmbia, Gana, Guiné, Guiné-Bissau, Quênia, Lesoto, Libéria, Líbia, Madagascar, Malawi, Mali, Mauritânia, Maurício, Marrocos, Moçambique, Namíbia, Níger, Nigéria, Ruanda, São Tomé e Príncipe, Senegal, Seychelles, Serra Leoa, Somália, África do Sul, Sudão do Sul, Sudão, Tanzânia, Togo, Tunísia, Uganda, Zâmbia, Zimbábue

### Ásia (49 países)
Afeganistão, Bahrein, Bangladesh, Butão, Brunei, Camboja, China, Hong Kong, Índia, Indonésia, Irã, Iraque, Israel, Japão, Jordânia, Cazaquistão, Kuwait, Quirguistão, Laos, Líbano, Malásia, Maldivas, Mongólia, Myanmar, Nepal, Coreia do Norte, Omã, Paquistão, Palestina, Filipinas, Qatar, Arábia Saudita, Singapura, Coreia do Sul, Sri Lanka, Síria, Taiwan, Tajiquistão, Tailândia, Timor-Leste, Turcomenistão, Emirados Árabes Unidos, Uzbequistão, Vietnã, Iêmen

### Oceania (8 países)
Austrália, Fiji, Nova Zelândia, Papua Nova Guiné, Samoa, Ilhas Salomão, Tonga, Vanuatu

## 🏗️ Estrutura do Enum

Cada país no `TeamFlagType` possui três propriedades:

```dart
enum TeamFlagType {
  brazil('Brazil', 'BR', 'BRA'),
  // name: Nome do país em inglês
  // code: Código ISO 3166-1 alpha-2 (2 letras)
  // teamCode: Código FIFA de 3 letras (usado em competições esportivas)
}
```

## 🎨 Status de Implementação das Bandeiras

Atualmente, as seguintes bandeiras estão implementadas com CustomPainter:

- ✅ França

**Nota**: As demais bandeiras exibirão um placeholder até serem implementadas. Contribuições são bem-vindas!

## 🛠️ Parâmetros do Widget TeamFlag

| Parâmetro | Tipo | Obrigatório | Padrão | Descrição |
|-----------|------|-------------|--------|-----------|
| `type` | `TeamFlagType` | Sim | - | O país/seleção a ser exibido |
| `width` | `double` | Sim | - | Largura da bandeira |
| `isRounded` | `bool` | Não | `false` | Se true, exibe a bandeira em formato circular |

**Proporções**: As bandeiras retangulares seguem a proporção 3:2 (altura = 2/3 da largura). Bandeiras circulares têm altura igual à largura.

## 🤝 Contribuindo

Contribuições são muito bem-vindas! Especialmente para:

1. **Implementar novas bandeiras** com CustomPainter
2. Corrigir bandeiras existentes
3. Melhorar a documentação
4. Reportar bugs

### Como Contribuir com Bandeiras

1. Crie um novo arquivo em `lib/flags/[pais]/[pais]_flag_painter.dart`
2. Implemente a classe que estende `CustomPainter`
3. Adicione o caso no switch em `TeamFlagType.getPainter()`
4. Teste sua implementação
5. Envie um Pull Request

Exemplo de estrutura:

```dart
class BrazilFlagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Implementação da bandeira
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```

## 📝 Changelog

Veja o arquivo [CHANGELOG.md](CHANGELOG.md) para detalhes sobre as mudanças em cada versão.

## 📄 Licença

Este projeto está licenciado sob a licença BSD 3-Clause - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 👨‍💻 Autor

Desenvolvido com ❤️ para a comunidade Flutter

---

**⭐ Se este pacote foi útil, considere dar uma estrela no repositório!**
