import 'package:flutter/material.dart';
import '../widgets/centered_app_bar_title.dart';
import 'dart:async';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  // Список просмотренных историй
  final Set<int> _viewedStories = {};

  void _markAsViewed(int index) {
    setState(() {
      _viewedStories.add(index);
    });
  }

  bool _isViewed(int index) {
    return _viewedStories.contains(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CenteredAppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // ЛЕНТА ИСТОРИЙ (STORIES) - ПРЯМОУГОЛЬНИКИ
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: [
                  _buildStoryItem(
                    context,
                    0,
                    'Зарница 2.0',
                    Colors.blue,
                    'В Волгограде наградили победителей военно-патриотической игры',
                  ),
                  _buildStoryItem(
                    context,
                    1,
                    'Спорт',
                    Colors.green,
                    'Студенты колледжа заняли первое место в соревнованиях',
                  ),
                  _buildStoryItem(
                    context,
                    2,
                    'Новости',
                    Colors.orange,
                    'Открытие новой лаборатории по робототехнике',
                  ),
                  _buildStoryItem(
                    context,
                    3,
                    'События',
                    Colors.purple,
                    'День открытых дверей - приглашаем всех желающих',
                  ),
                  _buildStoryItem(
                    context,
                    4,
                    'Достижения',
                    Colors.red,
                    'Наши студенты стали призерами WorldSkills',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Новостная карточка 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ИЗОБРАЖЕНИЕ НОВОСТИ 1
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/images/news1.jpg',
                        width: double.infinity,
                        height: 180,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: double.infinity,
                            height: 180,
                            color: Colors.grey[300],
                            child: const Center(
                              child: Icon(Icons.image, size: 64, color: Colors.grey),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'В Волгограде наградили победителей «Зарницы 2.0»',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'На Мамаевом кургане состоялась торжественная церемония награждения участников Всероссийского финала военно-патриотической игры «Зарница 2.0». Масштабный проект объединяет патриотическое воспитание, физическую и начальную военную подготовку с применением современных цифровых технологий.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Новостная карточка 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ИЗОБРАЖЕНИЕ НОВОСТИ 2
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        'assets/images/news2.jpg',
                        width: double.infinity,
                        height: 180,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: double.infinity,
                            height: 180,
                            color: Colors.grey[300],
                            child: const Center(
                              child: Icon(Icons.image, size: 64, color: Colors.grey),
                            ),
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Спортивные мероприятия колледжа',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Студенты колледжа активно участвуют в спортивных соревнованиях и показывают отличные результаты.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // ПРЯМОУГОЛЬНАЯ КАРТОЧКА ИСТОРИИ С ИЗОБРАЖЕНИЕМ
  Widget _buildStoryItem(
      BuildContext context,
      int index,
      String title,
      Color borderColor,
      String storyContent,
      ) {
    final bool isViewed = _isViewed(index);

    // Путь к изображению истории
    final String imagePath = 'assets/images/story${index + 1}.jpg';

    return GestureDetector(
      onTap: () async {
        await _openStoryViewer(context, index, title, storyContent, borderColor);
        _markAsViewed(index);
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            // ПРЯМОУГОЛЬНИК С СКРУГЛЕННЫМИ УГЛАМИ
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isViewed ? Colors.grey : borderColor,
                  width: 3,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Stack(
                  children: [
                    // ИЗОБРАЖЕНИЕ ИСТОРИИ
                    Image.asset(
                      imagePath,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // Если изображение не найдено
                        return Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.image, size: 40, color: Colors.grey),
                          ),
                        );
                      },
                    ),
                    // Градиент снизу для текста
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Название истории
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ОТКРЫТЬ ПРОСМОТР ИСТОРИЙ
  Future<void> _openStoryViewer(
      BuildContext context,
      int initialIndex,
      String title,
      String content,
      Color color,
      ) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryViewerScreen(
          initialIndex: initialIndex,
          stories: [
            StoryData(
              title: 'Зарница 2.0',
              content: 'В Волгограде наградили победителей военно-патриотической игры',
              color: Colors.blue,
              imagePath: 'assets/images/story1.jpg',
            ),
            StoryData(
              title: 'Спорт',
              content: 'Студенты колледжа заняли первое место в соревнованиях',
              color: Colors.green,
              imagePath: 'assets/images/story2.jpg',
            ),
            StoryData(
              title: 'Новости',
              content: 'Открытие новой лаборатории по робототехнике',
              color: Colors.orange,
              imagePath: 'assets/images/story3.jpg',
            ),
            StoryData(
              title: 'События',
              content: 'День открытых дверей - приглашаем всех желающих',
              color: Colors.purple,
              imagePath: 'assets/images/story4.jpg',
            ),
            StoryData(
              title: 'Достижения',
              content: 'Наши студенты стали призерами WorldSkills',
              color: Colors.red,
              imagePath: 'assets/images/story5.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

// МОДЕЛЬ ДАННЫХ ИСТОРИИ
class StoryData {
  final String title;
  final String content;
  final Color color;
  final String imagePath;

  StoryData({
    required this.title,
    required this.content,
    required this.color,
    required this.imagePath,
  });
}

// ЭКРАН ПРОСМОТРА ИСТОРИЙ
class StoryViewerScreen extends StatefulWidget {
  final int initialIndex;
  final List<StoryData> stories;

  const StoryViewerScreen({
    super.key,
    required this.initialIndex,
    required this.stories,
  });

  @override
  State<StoryViewerScreen> createState() => _StoryViewerScreenState();
}

class _StoryViewerScreenState extends State<StoryViewerScreen> {
  late int _currentIndex;
  late PageController _pageController;
  Timer? _timer;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: _currentIndex);
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  // ЗАПУСТИТЬ ТАЙМЕР 5 СЕКУНД
  void _startTimer() {
    _timer?.cancel();
    _progress = 0.0;

    _timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        _progress += 0.05 / 5; // 5 секунд = 100%

        if (_progress >= 1.0) {
          _progress = 0.0;
          _nextStory();
        }
      });
    });
  }

  // СЛЕДУЮЩАЯ ИСТОРИЯ
  void _nextStory() {
    if (_currentIndex < widget.stories.length - 1) {
      setState(() {
        _currentIndex++;
        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
      _startTimer();
    } else {
      Navigator.pop(context);
    }
  }

  // ПРЕДЫДУЩАЯ ИСТОРИЯ
  void _previousStory() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
      _startTimer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTapUp: (details) {
          final screenWidth = MediaQuery.of(context).size.width;
          final tapPosition = details.globalPosition.dx;

          // Левая половина - предыдущая история
          if (tapPosition < screenWidth / 2) {
            _previousStory();
          }
          // Правая половина - следующая история
          else {
            _nextStory();
          }
        },
        child: Stack(
          children: [
            // КОНТЕНТ ИСТОРИЙ
            PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.stories.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return _buildStoryContent(widget.stories[index]);
              },
            ),

            // ПРОГРЕСС БАРЫ СВЕРХУ
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: List.generate(
                        widget.stories.length,
                            (index) => Expanded(
                          child: Container(
                            height: 3,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: FractionallySizedBox(
                              alignment: Alignment.centerLeft,
                              widthFactor: index == _currentIndex
                                  ? _progress
                                  : (index < _currentIndex ? 1.0 : 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ЗАГОЛОВОК И КНОПКА ЗАКРЫТЬ
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[800],
                                ),
                                child: const Icon(Icons.image, color: Colors.grey),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            widget.stories[_currentIndex].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // КОНТЕНТ ОДНОЙ ИСТОРИИ С ИЗОБРАЖЕНИЕМ
  Widget _buildStoryContent(StoryData story) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),

          // ИЗОБРАЖЕНИЕ ИСТОРИИ
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  story.imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.image,
                        size: 100,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          // ТЕКСТ ИСТОРИИ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              story.content,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}