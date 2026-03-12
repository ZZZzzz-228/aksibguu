import 'dart:ui';
import 'package:flutter/material.dart';
import '../widgets/centered_app_bar_title.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Модель сотрудника
// ─────────────────────────────────────────────────────────────────────────────

class _StaffMember {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String hours;
  final List<Color> gradientColors;
  final String photoAsset;

  const _StaffMember({
    required this.name,
    required this.position,
    required this.email,
    required this.phone,
    required this.hours,
    required this.gradientColors,
    required this.photoAsset,
  });
}

const List<_StaffMember> _staffList = [
  _StaffMember(
    name: 'Тимошев Павел Викторович',
    position: 'Директор Аэрокосмического Колледжа',
    email: 'ak@sibsau.ru',
    phone: '2919115',
    hours: 'Часы приёма: вторник, четверг с 14:00 до 16:00',
    gradientColors: [Color(0xFF4A90E2), Color(0xFF64B5F6)],
    photoAsset: 'assets/images/director_photo.png',
  ),
  _StaffMember(
    name: 'Иванова Светлана Петровна',
    position: 'Заместитель директора по учебной работе',
    email: 'ivanova@sibsau.ru',
    phone: '2919116',
    hours: 'Часы приёма: понедельник, среда с 13:00 до 15:00',
    gradientColors: [Color(0xFF5E35B1), Color(0xFF9575CD)],
    photoAsset: 'assets/images/staff2.png',
  ),
  _StaffMember(
    name: 'Петров Андрей Николаевич',
    position: 'Заместитель директора по воспитательной работе',
    email: 'petrov@sibsau.ru',
    phone: '2919117',
    hours: 'Часы приёма: вторник, пятница с 14:00 до 16:00',
    gradientColors: [Color(0xFF00897B), Color(0xFF4DB6AC)],
    photoAsset: 'assets/images/staff3.png',
  ),
  _StaffMember(
    name: 'Сидорова Марина Александровна',
    position: 'Заместитель директора по научно-методической работе',
    email: 'sidorova@sibsau.ru',
    phone: '2919118',
    hours: 'Часы приёма: среда с 10:00 до 12:00',
    gradientColors: [Color(0xFFC62828), Color(0xFFEF9A9A)],
    photoAsset: 'assets/images/staff4.png',
  ),
  _StaffMember(
    name: 'Козлов Дмитрий Сергеевич',
    position: 'Заведующий отделением IT и информационной безопасности',
    email: 'kozlov.it@sibsau.ru',
    phone: '2919119',
    hours: 'Часы приёма: понедельник, четверг с 15:00 до 17:00',
    gradientColors: [Color(0xFF1565C0), Color(0xFF42A5F5)],
    photoAsset: 'assets/images/staff5.png',
  ),
  _StaffMember(
    name: 'Новикова Ольга Юрьевна',
    position: 'Заведующая отделением машиностроения',
    email: 'novikova@sibsau.ru',
    phone: '2919120',
    hours: 'Часы приёма: вторник, среда с 13:00 до 15:00',
    gradientColors: [Color(0xFF4E342E), Color(0xFF8D6E63)],
    photoAsset: 'assets/images/staff6.png',
  ),
  _StaffMember(
    name: 'Морозов Игорь Васильевич',
    position: 'Заведующий отделением энергетики',
    email: 'morozov@sibsau.ru',
    phone: '2919121',
    hours: 'Часы приёма: среда, пятница с 14:00 до 16:00',
    gradientColors: [Color(0xFFE65100), Color(0xFFFFB74D)],
    photoAsset: 'assets/images/staff7.png',
  ),
  _StaffMember(
    name: 'Волкова Елена Михайловна',
    position: 'Заведующая авиационным отделением',
    email: 'volkova@sibsau.ru',
    phone: '2919122',
    hours: 'Часы приёма: понедельник с 10:00 до 12:00',
    gradientColors: [Color(0xFF1A237E), Color(0xFF5C6BC0)],
    photoAsset: 'assets/images/staff8.png',
  ),
  _StaffMember(
    name: 'Лебедева Анна Игоревна',
    position: 'Специалист по трудоустройству выпускников',
    email: 'lebedeva@sibsau.ru',
    phone: '2919123',
    hours: 'Часы приёма: ежедневно с 09:00 до 12:00',
    gradientColors: [Color(0xFF558B2F), Color(0xFF9CCC65)],
    photoAsset: 'assets/images/staff9.png',
  ),
  _StaffMember(
    name: 'Захарова Наталья Викторовна',
    position: 'Социальный педагог',
    email: 'zaharova@sibsau.ru',
    phone: '2919124',
    hours: 'Часы приёма: вторник, четверг с 10:00 до 12:00',
    gradientColors: [Color(0xFF00695C), Color(0xFF4DB6AC)],
    photoAsset: 'assets/images/staff10.png',
  ),
  _StaffMember(
    name: 'Соколова Виктория Андреевна',
    position: 'Педагог-психолог',
    email: 'sokolova@sibsau.ru',
    phone: '2919125',
    hours: 'Часы приёма: понедельник, среда, пятница с 13:00 до 15:00',
    gradientColors: [Color(0xFF6A1B9A), Color(0xFFBA68C8)],
    photoAsset: 'assets/images/staff11.png',
  ),
  _StaffMember(
    name: 'Кузнецова Ирина Олеговна',
    position: 'Секретарь учебной части',
    email: 'kuznetsova@sibsau.ru',
    phone: '2919126',
    hours: 'Часы работы: пн–пт с 08:00 до 17:00',
    gradientColors: [Color(0xFF37474F), Color(0xFF78909C)],
    photoAsset: 'assets/images/staff12.png',
  ),
];

// ─────────────────────────────────────────────────────────────────────────────
// Экран «Контакты»
// ─────────────────────────────────────────────────────────────────────────────

class GuestContactsScreen extends StatefulWidget {
  const GuestContactsScreen({super.key});

  @override
  State<GuestContactsScreen> createState() => _GuestContactsScreenState();
}

class _GuestContactsScreenState extends State<GuestContactsScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showContactsTitle = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final shouldShow = _scrollController.offset > 40;
    if (shouldShow != _showContactsTitle) {
      setState(() => _showContactsTitle = shouldShow);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: false,
              snap: false,
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              automaticallyImplyLeading: false,
              toolbarHeight: 74,
              flexibleSpace: _ContactsFrostedHeader(showContactsTitle: _showContactsTitle),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              // ── Основная информационная карточка ──────────────────────────
              Container(
                width: double.infinity,
                color: const Color(0xFFE3F2FD),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'ЦЕНТР КАРЬЕРЫ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Сибирский государственный университет науки и технологий имени академика М.Ф. Решетнёва, аэрокосмический колледж',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                    const SizedBox(height: 24),

                    // Телефоны
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildContactItem(Icons.phone, '+7 (391) 264-06-59', const Color(0xFF4A90E2)),
                        _buildContactItem(Icons.phone, '+7 (391) 264-57-35', const Color(0xFF4A90E2)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildContactItem(Icons.phone, '+7 (391) 264-15-88', const Color(0xFF4A90E2)),
                        _buildContactItem(Icons.email, 'ak@sibsau.ru', const Color(0xFF4A90E2)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildContactItem(Icons.language, 'sibsau.ru', const Color(0xFF4A90E2)),
                        _buildContactItem(Icons.language, 'sibgu_ru', const Color(0xFF4A90E2)),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Иконки с информацией
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.access_time, size: 32, color: Colors.black87),
                            SizedBox(height: 8),
                            Text('08:00-17:00', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.people, size: 32, color: Colors.black87),
                            SizedBox(height: 8),
                            Text('500+ студентов', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.chat_bubble_outline, size: 32, color: Colors.black87),
                            SizedBox(height: 8),
                            Text('Онлайн поддержка', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ── Карточки сотрудников ──────────────────────────────────────
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: _staffList.map((staff) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: _buildStaffCard(staff),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStaffCard(_StaffMember staff) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: staff.gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 28),
          // Фото
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
            ),
            child: ClipOval(
              child: Image.asset(
                staff.photoAsset,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.white.withOpacity(0.3),
                  child: const Icon(Icons.person, size: 50, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Белый блок с информацией
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Text(
                  staff.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  staff.position,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: staff.gradientColors[0]),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.email, size: 16, color: Colors.black54),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        staff.email,
                        style: const TextStyle(fontSize: 13, color: Colors.black87),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.phone, size: 16, color: Colors.black54),
                    const SizedBox(width: 8),
                    Text(
                      staff.phone,
                      style: const TextStyle(fontSize: 13, color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  staff.hours,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: color),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(fontSize: 13, color: Colors.black87)),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Frosted header для страницы Контакты:
// «Центр карьеры» прячется при скролле, «Контакты» появляется
// ─────────────────────────────────────────────────────────────────────────────

class _ContactsFrostedHeader extends StatelessWidget {
  final bool showContactsTitle;
  const _ContactsFrostedHeader({required this.showContactsTitle});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Матовый фон — появляется при скролле
          AnimatedOpacity(
            duration: const Duration(milliseconds: 220),
            opacity: showContactsTitle ? 1 : 0,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
              child: Container(color: Colors.white.withOpacity(0.72)),
            ),
          ),

          // «Центр карьеры» — исчезает при скролле
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 220),
                  opacity: showContactsTitle ? 0 : 1,
                  child: const CenteredAppBarTitle(),
                ),
              ),
            ),
          ),

          // «Контакты» — появляется при скролле
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 220),
                  opacity: showContactsTitle ? 1 : 0,
                  child: AnimatedSlide(
                    duration: const Duration(milliseconds: 220),
                    offset: showContactsTitle ? Offset.zero : const Offset(0, -0.15),
                    child: const Text(
                      'Контакты',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
