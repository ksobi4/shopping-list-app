import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const Divider(color: Colors.white70),
            _buildHeader(),
            const Divider(color: Colors.white70),
            ListTile(
              title: Text('Item1'),
            ),
            _buildMenuItem(text: '')
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: const [
            CircleAvatar(radius: 10),
            SizedBox(width: 20),
            Text('User username'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required String text,
    IconData? icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.grey[300];

    return Center(
      child: ListTile(
        leading: icon != null ? Icon(icon, color: color) : null,
        title: Text(text),
        onTap: onClicked,
      ),
    );
  }

  void _selectItem(BuildContext context, int index) {
    switch (index) {
      case 1:
        // context.router.replace(const GradesRoute());
        break;
      case 2:
        // context.router.replace(const TestRoute());
        break;
    }
    Navigator.pop(context);
  }
}
