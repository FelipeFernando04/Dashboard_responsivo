# 🏋️ Dashboard Saúde — Flutter

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Responsivo-Mobile%20%7C%20Tablet%20%7C%20Desktop-26A69A?style=for-the-badge"/>
</p>

<p align="center">
  Dashboard responsivo de saúde e academia desenvolvido em Flutter,<br/>
  com layout adaptativo para mobile, tablet e desktop.
</p>

---

## 👤 Identificação

| Campo | Info |
|-------|------|
| **Nome** | Seu Nome |
| **Curso** | Análise e Desenvolvimento de Sistemas |
| **Fase** | 5ª Fase — 2026/1 |
| **Disciplina** | Desenvolvimento para Dispositivos Móveis |
| **Atividade** | Aula 6 — Dashboard Responsivo |

---

# 🚀 Como executar

### Pré-requisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado
- Chrome (para rodar na web) **ou** Android Studio com emulador

### Passo a passo

```bash
# 1. Clone o repositório
git clone https://github.com/seu-usuario/dashboard-responsivo-seunome.git

# 2. Entre na pasta do projeto
cd dashboard-responsivo-seunome

# 3. Instale as dependências
flutter pub get

# 4. Rode no navegador (recomendado para testar responsividade)
flutter run -d chrome

# 5. Ou rode no emulador Android
flutter run
```

> 💡 **Dica:** No Chrome, redimensione a janela para ver o layout mudando automaticamente entre os breakpoints.

---

## 🗂️ Estrutura do projeto

```
dashboard_responsivo/
├── lib/
│   ├── main.dart               # Ponto de entrada do app
│   ├── dashboard_screen.dart   # Tela principal com lógica responsiva
│   └── dashboard_card.dart     # Widget reutilizável de card
├── screenshots/
│   ├── screenshot_mobile.png
│   ├── screenshot_tablet.png
│   └── screenshot_desktop.png
└── README.md
```

---

## 📐 Breakpoints implementados

| Dispositivo | Largura | Widget usado | Layout |
|-------------|---------|--------------|--------|
| 📱 Mobile | `< 600px` | `Column` | 1 card por linha |
| 💻 Tablet | `600px – 900px` | `Wrap` | Grade 2 × 2 |
| 🖥️ Desktop | `> 900px` | `Row` + `Expanded` | 4 cards lado a lado |

---

## 🧩 Widgets utilizados

| Widget | Finalidade |
|--------|-----------|
| `MediaQuery` | Detectar a largura da tela |
| `Expanded` | Distribuir espaço igualmente no layout Row |
| `Wrap` | Quebrar linha automaticamente no layout Tablet |
| `Column` | Empilhar cards no layout Mobile |
| `Container` | Estilizar os cards com cor, borda e sombra |
| `Scaffold` + `AppBar` | Estrutura principal da tela |

---

## 📊 Cards do Dashboard

| Card | Ícone | Valor |
|------|-------|-------|
| Treinos esta semana | 🏋️ | 5 |
| Calorias queimadas | 🔥 | 2.340 kcal |
| Peso atual | ⚖️ | 72,5 kg |
| Meta mensal | 🚩 | 80% |

---

## 📚 Referências

- [Flutter — Layout documentation](https://flutter.dev/docs/development/ui/layout)
- [MediaQuery class](https://api.flutter.dev/flutter/widgets/MediaQuery-class.html)
- [Responsive design in Flutter](https://flutter.dev/docs/development/ui/layout/adaptive-responsive)
