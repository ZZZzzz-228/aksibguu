import 'package:flutter/material.dart';
import 'document_submission_screen.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Модель вопроса теста
// ─────────────────────────────────────────────────────────────────────────────

class _QuizQuestion {
  final String question;
  final List<_QuizOption> options;
  const _QuizQuestion({required this.question, required this.options});
}

class _QuizOption {
  final String text;
  final Map<String, int> scores; // ключ = категория, значение = очки
  const _QuizOption({required this.text, required this.scores});
}

// Категории специальностей
// it, security, engineering, energy, aviation, oil_gas, economics, measurement

const List<_QuizQuestion> _quizQuestions = [
  _QuizQuestion(
    question: 'Что тебе больше всего нравится делать в свободное время?',
    options: [
      _QuizOption(text: 'Программировать или играть в компьютерные игры', scores: {'it': 3, 'security': 1}),
      _QuizOption(text: 'Собирать и разбирать технику, механизмы', scores: {'engineering': 3, 'measurement': 1}),
      _QuizOption(text: 'Считать, планировать бюджет', scores: {'economics': 3}),
      _QuizOption(text: 'Мечтать о полётах, смотреть про космос', scores: {'aviation': 3, 'oil_gas': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Какой предмет в школе тебе нравится больше всего?',
    options: [
      _QuizOption(text: 'Информатика', scores: {'it': 3, 'security': 2}),
      _QuizOption(text: 'Физика', scores: {'engineering': 2, 'aviation': 2, 'energy': 2}),
      _QuizOption(text: 'Математика', scores: {'economics': 2, 'measurement': 2, 'it': 1}),
      _QuizOption(text: 'Химия / Биология', scores: {'oil_gas': 2, 'engineering': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Как ты представляешь своё рабочее место?',
    options: [
      _QuizOption(text: 'За компьютером в офисе', scores: {'it': 3, 'security': 2, 'economics': 1}),
      _QuizOption(text: 'На производстве, в цехе', scores: {'engineering': 3, 'energy': 2}),
      _QuizOption(text: 'На открытом воздухе или в поле', scores: {'oil_gas': 3, 'aviation': 1}),
      _QuizOption(text: 'В лаборатории или испытательном центре', scores: {'measurement': 3, 'security': 1, 'aviation': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Что тебя больше всего привлекает в будущей работе?',
    options: [
      _QuizOption(text: 'Создавать программы и приложения', scores: {'it': 3}),
      _QuizOption(text: 'Защищать данные и информацию', scores: {'security': 3, 'it': 1}),
      _QuizOption(text: 'Работать с высокими технологиями и роботами', scores: {'engineering': 2, 'aviation': 2}),
      _QuizOption(text: 'Обеспечивать людей энергией', scores: {'energy': 3, 'oil_gas': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Выбери задачу, которую тебе интереснее решить:',
    options: [
      _QuizOption(text: 'Настроить сервер и сеть компании', scores: {'it': 3, 'security': 1}),
      _QuizOption(text: 'Починить двигатель самолёта', scores: {'aviation': 3, 'engineering': 1}),
      _QuizOption(text: 'Составить финансовый отчёт', scores: {'economics': 3}),
      _QuizOption(text: 'Проложить трубопровод', scores: {'oil_gas': 3, 'energy': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Что для тебя важнее в карьере?',
    options: [
      _QuizOption(text: 'Высокая зарплата и стабильность', scores: {'economics': 2, 'oil_gas': 2, 'energy': 1}),
      _QuizOption(text: 'Интересные технические задачи', scores: {'it': 2, 'engineering': 2, 'aviation': 1}),
      _QuizOption(text: 'Безопасность и защита страны', scores: {'security': 3, 'aviation': 1}),
      _QuizOption(text: 'Точность и порядок в работе', scores: {'measurement': 3, 'economics': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Как ты относишься к командной работе?',
    options: [
      _QuizOption(text: 'Предпочитаю работать один за компьютером', scores: {'it': 2, 'security': 2}),
      _QuizOption(text: 'Люблю работать в большой команде на производстве', scores: {'engineering': 2, 'energy': 2}),
      _QuizOption(text: 'Нравится работать в небольшой команде специалистов', scores: {'aviation': 2, 'measurement': 2}),
      _QuizOption(text: 'Хочу руководить и управлять финансами', scores: {'economics': 3}),
    ],
  ),
  _QuizQuestion(
    question: 'Какой фильм или сериал тебе ближе?',
    options: [
      _QuizOption(text: 'Хакеры, киберпреступления, IT-триллеры', scores: {'security': 3, 'it': 1}),
      _QuizOption(text: 'Про космос, авиацию, полёты', scores: {'aviation': 3}),
      _QuizOption(text: 'Про заводы, машиностроение, изобретателей', scores: {'engineering': 3, 'measurement': 1}),
      _QuizOption(text: 'Финансовые драмы, бизнес', scores: {'economics': 3}),
    ],
  ),
  _QuizQuestion(
    question: 'Что из перечисленного тебя больше пугает в работе?',
    options: [
      _QuizOption(text: 'Скучная рутина без творчества', scores: {'it': 2, 'engineering': 1}),
      _QuizOption(text: 'Работа за компьютером без движения', scores: {'oil_gas': 2, 'energy': 2, 'aviation': 1}),
      _QuizOption(text: 'Большая ответственность за финансы', scores: {'it': 1, 'security': 1, 'engineering': 1, 'aviation': 1}),
      _QuizOption(text: 'Работа без чётких правил и стандартов', scores: {'measurement': 2, 'economics': 2}),
    ],
  ),
  _QuizQuestion(
    question: 'Выбери инструмент, с которым хочешь работать:',
    options: [
      _QuizOption(text: 'Программный код и алгоритмы', scores: {'it': 3, 'security': 1}),
      _QuizOption(text: 'Токарный станок, сварочный аппарат', scores: {'engineering': 3}),
      _QuizOption(text: 'Измерительные приборы и датчики', scores: {'measurement': 3, 'energy': 1}),
      _QuizOption(text: 'Авиационные двигатели и турбины', scores: {'aviation': 3, 'oil_gas': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Насколько тебе интересна тема безопасности данных?',
    options: [
      _QuizOption(text: 'Очень интересно — хочу защищать информацию', scores: {'security': 3}),
      _QuizOption(text: 'Интересует, но больше нравится разработка', scores: {'it': 2, 'security': 1}),
      _QuizOption(text: 'Мало интересует, предпочитаю физический труд', scores: {'engineering': 2, 'oil_gas': 1}),
      _QuizOption(text: 'Совсем не интересует', scores: {'economics': 1, 'aviation': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Как ты относишься к точным расчётам и измерениям?',
    options: [
      _QuizOption(text: 'Обожаю — люблю всё точно считать', scores: {'measurement': 3, 'economics': 2}),
      _QuizOption(text: 'Нормально — это часть технической работы', scores: {'engineering': 2, 'energy': 2}),
      _QuizOption(text: 'Предпочитаю работать с логикой программ', scores: {'it': 2, 'security': 1}),
      _QuizOption(text: 'Не очень — предпочитаю практические задачи', scores: {'oil_gas': 2, 'aviation': 1}),
    ],
  ),
  _QuizQuestion(
    question: 'Ты хочешь работать в государственной или оборонной отрасли?',
    options: [
      _QuizOption(text: 'Да, это престижно и стабильно', scores: {'security': 2, 'aviation': 2}),
      _QuizOption(text: 'Предпочту крупный частный бизнес', scores: {'economics': 2, 'it': 1, 'oil_gas': 1}),
      _QuizOption(text: 'Хочу на производственное предприятие', scores: {'engineering': 2, 'energy': 2}),
      _QuizOption(text: 'Мне важна нефтегазовая промышленность', scores: {'oil_gas': 3}),
    ],
  ),
  _QuizQuestion(
    question: 'Какая из этих задач тебе кажется наиболее интересной?',
    options: [
      _QuizOption(text: 'Разработать сайт или мобильное приложение', scores: {'it': 3}),
      _QuizOption(text: 'Создать систему учёта и финансовой отчётности', scores: {'economics': 3}),
      _QuizOption(text: 'Спроектировать деталь для ракеты', scores: {'aviation': 3, 'engineering': 1}),
      _QuizOption(text: 'Настроить промышленный робот', scores: {'engineering': 2, 'measurement': 2}),
    ],
  ),
  _QuizQuestion(
    question: 'Что лучше всего описывает тебя?',
    options: [
      _QuizOption(text: 'Аналитик — люблю разбираться в данных и логике', scores: {'it': 2, 'security': 2, 'economics': 1}),
      _QuizOption(text: 'Инженер — хочу создавать реальные вещи', scores: {'engineering': 3, 'measurement': 1}),
      _QuizOption(text: 'Исследователь — интересует природа и технологии', scores: {'oil_gas': 2, 'energy': 2, 'aviation': 1}),
      _QuizOption(text: 'Организатор — умею планировать и управлять', scores: {'economics': 3}),
    ],
  ),
];

// Маппинг категорий на специальности приложения
const Map<String, List<String>> _categoryToSpecialties = {
  'it': [
    'Информационные системы и программирование',
    'Сетевое и системное администрирование',
  ],
  'security': [
    'Обеспечение информационной безопасности телекоммуникационных систем',
    'Обеспечение информационной безопасности автоматизированных систем',
  ],
  'engineering': [
    'Технология машиностроения',
    'Мехатроника и мобильная робототехника (по отраслям)',
    'Специальные машины и устройства',
    'Сварочное производство',
  ],
  'energy': [
    'Электро‑ и теплоэнергетика',
    'Техническая эксплуатация и обслуживание электрического и электромеханического оборудования (по отраслям)',
  ],
  'aviation': [
    'Техническое обслуживание авиационных двигателей',
    'Аэронавигация и эксплуатация авиационной и ракетно‑космической техники',
  ],
  'oil_gas': [
    'Сооружение и эксплуатация газонефтепроводов и газонефтехранилищ (прикладная геология, горное дело, нефтегазовое дело и геодезия)',
  ],
  'economics': [
    'Экономика и бухгалтерский учет',
  ],
  'measurement': [
    'Контроль работы измерительных приборов',
  ],
};

const Map<String, String> _categoryNames = {
  'it': 'Информационные технологии',
  'security': 'Информационная безопасность',
  'engineering': 'Машиностроение и робототехника',
  'energy': 'Энергетика',
  'aviation': 'Авиация и космос',
  'oil_gas': 'Нефтегазовое дело',
  'economics': 'Экономика и учёт',
  'measurement': 'Измерительные приборы',
};

const Map<String, IconData> _categoryIcons = {
  'it': Icons.code,
  'security': Icons.security,
  'engineering': Icons.settings,
  'energy': Icons.bolt,
  'aviation': Icons.rocket_launch,
  'oil_gas': Icons.oil_barrel,
  'economics': Icons.account_balance_wallet,
  'measurement': Icons.speed,
};

const Map<String, Color> _categoryColors = {
  'it': Color(0xFF1565C0),
  'security': Color(0xFF2E7D32),
  'engineering': Color(0xFF4E342E),
  'energy': Color(0xFFE65100),
  'aviation': Color(0xFF1A237E),
  'oil_gas': Color(0xFF558B2F),
  'economics': Color(0xFF00796B),
  'measurement': Color(0xFF37474F),
};

// ─────────────────────────────────────────────────────────────────────────────
// Главный экран профориентации
// ─────────────────────────────────────────────────────────────────────────────

class CareerGuidanceScreen extends StatelessWidget {
  const CareerGuidanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Row(
          children: [
            Icon(Icons.explore, color: Color(0xFF4A90E2)),
            SizedBox(width: 8),
            Text('Профориентация'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Баннер
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF4A90E2), Color(0xFF64B5F6)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.quiz, color: Colors.white, size: 36),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Быстрый тест\nна профориентацию',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Ответь на 15 вопросов и узнай, какая специальность подходит тебе больше всего!',
                    style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.5),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Информационные блоки
            Row(
              children: [
                Expanded(child: _buildInfoBlock(Icons.timer, '5 минут', 'Занимает тест')),
                const SizedBox(width: 12),
                Expanded(child: _buildInfoBlock(Icons.help_outline, '15 вопросов', 'Всего вопросов')),
                const SizedBox(width: 12),
                Expanded(child: _buildInfoBlock(Icons.school, '15 профессий', 'Специальностей')),
              ],
            ),

            const SizedBox(height: 24),

            const Text(
              'Как это работает?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', 'Ответь на все 15 вопросов честно', const Color(0xFF4A90E2)),
            _buildStep('2', 'Система проанализирует твои ответы', const Color(0xFF66BB6A)),
            _buildStep('3', 'Получи рекомендацию специальности', const Color(0xFFFF9800)),
            _buildStep('4', 'Подай документы прямо в приложении', const Color(0xFFE91E63)),

            const SizedBox(height: 32),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const _QuizScreen()),
                ),
                icon: const Icon(Icons.play_arrow),
                label: const Text(
                  'Начать тест',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4A90E2),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBlock(IconData icon, String value, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF4A90E2), size: 22),
          const SizedBox(height: 6),
          Text(value, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          const SizedBox(height: 2),
          Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.grey[600])),
        ],
      ),
    );
  }

  Widget _buildStep(String number, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 30, height: 30,
            decoration: BoxDecoration(color: color.withOpacity(0.15), shape: BoxShape.circle),
            child: Center(child: Text(number, style: TextStyle(fontWeight: FontWeight.bold, color: color))),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14, height: 1.4))),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Экран теста
// ─────────────────────────────────────────────────────────────────────────────

class _QuizScreen extends StatefulWidget {
  const _QuizScreen();

  @override
  State<_QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<_QuizScreen> {
  int _currentQuestion = 0;
  final Map<String, int> _scores = {};
  int? _selectedOption;

  void _selectOption(int optionIndex) {
    setState(() => _selectedOption = optionIndex);
  }

  void _nextQuestion() {
    if (_selectedOption == null) return;

    // Начисляем очки
    final option = _quizQuestions[_currentQuestion].options[_selectedOption!];
    option.scores.forEach((key, value) {
      _scores[key] = (_scores[key] ?? 0) + value;
    });

    if (_currentQuestion < _quizQuestions.length - 1) {
      setState(() {
        _currentQuestion++;
        _selectedOption = null;
      });
    } else {
      // Тест завершён — переходим к результату
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => _QuizResultScreen(scores: Map.from(_scores))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = _quizQuestions[_currentQuestion];
    final progress = (_currentQuestion + 1) / _quizQuestions.length;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Вопрос ${_currentQuestion + 1} из ${_quizQuestions.length}'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Прогресс-бар
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4A90E2)),
            minHeight: 4,
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  // Номер вопроса
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A90E2).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Вопрос ${_currentQuestion + 1}',
                      style: const TextStyle(
                        color: Color(0xFF4A90E2),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Текст вопроса
                  Text(
                    question.question,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Варианты ответов
                  ...List.generate(question.options.length, (i) {
                    final isSelected = _selectedOption == i;
                    return GestureDetector(
                      onTap: () => _selectOption(i),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 180),
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: isSelected ? const Color(0xFF4A90E2) : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected ? const Color(0xFF4A90E2) : Colors.grey.shade200,
                            width: isSelected ? 2 : 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: isSelected
                                  ? const Color(0xFF4A90E2).withOpacity(0.2)
                                  : Colors.grey.withOpacity(0.06),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 28, height: 28,
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.white.withOpacity(0.2) : Colors.grey.shade100,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  String.fromCharCode(65 + i), // A, B, C, D
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: isSelected ? Colors.white : Colors.grey[700],
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                question.options[i].text,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected ? Colors.white : Colors.black87,
                                  height: 1.4,
                                ),
                              ),
                            ),
                            if (isSelected)
                              const Icon(Icons.check_circle, color: Colors.white, size: 20),
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),

          // Кнопка «Далее»
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _selectedOption != null ? _nextQuestion : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4A90E2),
                  disabledBackgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  elevation: 0,
                ),
                child: Text(
                  _currentQuestion < _quizQuestions.length - 1 ? 'Следующий вопрос →' : 'Завершить тест',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Экран результата теста
// ─────────────────────────────────────────────────────────────────────────────

class _QuizResultScreen extends StatelessWidget {
  final Map<String, int> scores;
  const _QuizResultScreen({required this.scores});

  String get _topCategory {
    if (scores.isEmpty) return 'it';
    return scores.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
  }

  List<MapEntry<String, int>> get _sortedScores {
    final entries = scores.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value));
    return entries;
  }

  @override
  Widget build(BuildContext context) {
    final top = _topCategory;
    final topSpecialties = _categoryToSpecialties[top] ?? [];
    final topColor = _categoryColors[top] ?? const Color(0xFF4A90E2);
    final topIcon = _categoryIcons[top] ?? Icons.school;
    final topName = _categoryNames[top] ?? '';
    final sorted = _sortedScores;
    final maxScore = sorted.isNotEmpty ? sorted.first.value : 1;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.popUntil(context, (route) => route.isFirst || route.settings.name == '/'),
          ),
          title: const Text('Результаты теста'),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              // Главный результат
              Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [topColor, topColor.withOpacity(0.75)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(topIcon, color: Colors.white, size: 48),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '🎉 Тебе подходит направление:',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    topName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Рекомендованные специальности
            const Text(
              'Рекомендуемые специальности:',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ...topSpecialties.map((spec) => Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
    color: topColor.withOpacity(0.07),
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: topColor.withOpacity(0.2)),
    ),
    child: Row(
    children: [
    Icon(topIcon, color: topColor, size: 20),
    const SizedBox(width: 12),
    Expanded(
    child: Text(
    spec,
    style: TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
    height: 1.4,
    ),
    ),
    ),
    ],
    ),
    )),

    const SizedBox(height: 24),

    // Диаграмма результатов
    const Text(
    'Твои результаты по направлениям:',
    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    ),
    const SizedBox(height: 14),
    ...sorted.map((entry) {
    final color = _categoryColors[entry.key] ?? Colors.grey;
    final name = _categoryNames[entry.key] ?? entry.key;
    final icon = _categoryIcons[entry.key] ?? Icons.school;
    final percent = maxScore > 0 ? entry.value / maxScore : 0.0;
    return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Icon(icon, color: color, size: 16),
    const SizedBox(width: 6),
    Expanded(
    child: Text(
    name,
    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    ),
    ),
    Text(
    '${entry.value} очков',
    style: TextStyle(fontSize: 11, color: Colors.grey[600]),
    ),
    ],
    ),
    const SizedBox(height: 4),
    ClipRRect(
    borderRadius: BorderRadius.circular(4),
    child: LinearProgressIndicator(
    value: percent,
    backgroundColor: Colors.grey[200],
    valueColor: AlwaysStoppedAnimation<Color>(color),
    minHeight: 8,
    ),
    ),
    ],
    ),
    );
    }),

    const SizedBox(height: 32),

    // Кнопка «Подать документы»
    SizedBox(
    width: double.infinity,
    child: ElevatedButton.icon(
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(
    builder: (_) => DocumentSubmissionScreen(
    initialSpecialties: topSpecialties,
    ),
    ),
    ),
    icon: const Icon(Icons.description_outlined),
    label: const Text(
    'Подать документы',
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    ),
    style: ElevatedButton.styleFrom(
    backgroundColor: topColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    elevation: 0,
    ),
    ),
    ),

    const SizedBox(height: 12),

    // Кнопка «Пройти снова»
    SizedBox(
    width: double.infinity,
    child: OutlinedButton.icon(
    onPressed: () => Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (_) => const _QuizScreen()),
    ),
    icon: const Icon(Icons.refresh),
    label: const Text(
    'Пройти тест снова',
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
    ),
    style: OutlinedButton