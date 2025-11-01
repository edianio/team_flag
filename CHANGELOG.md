# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Semantic Versioning](https://semver.org/lang/pt-BR/).

## [0.0.1] - 2025-11-01

### Adicionado
- 🎉 Lançamento inicial do pacote Team Flag
- 📋 Enum `TeamFlagType` com 195 países organizados por continente
- 🎨 Widget `TeamFlag` para exibir bandeiras
- 🔵 Suporte para bandeiras circulares através do parâmetro `isRounded`
- 📐 Largura personalizável com proporção automática 3:2
- 🇫🇷 Implementação da bandeira da França usando CustomPainter
- 🌐 Códigos internacionais (ISO 3166-1 alpha-2 e FIFA de 3 letras)
- 📝 Documentação completa no README.md

### Estrutura
- Europa: 46 países
- América do Norte e Central: 14 países
- América do Sul: 12 países
- África: 54 países
- Ásia: 49 países
- Oceania: 8 países

### Observações
- As bandeiras não implementadas exibem um placeholder cinza
- Contribuições para implementar novas bandeiras são bem-vindas

[0.0.1]: https://github.com/seu-usuario/team_flag/releases/tag/v0.0.1
