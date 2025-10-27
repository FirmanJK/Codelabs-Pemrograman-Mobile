import 'package:flutter/material.dart';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.color,
    this.onFilterSelected,
  });

  final Color color;
  final VoidCallback? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Image.network(
              'https://static.republika.co.id/uploads/images/inpicture_slide/puncak-gunung-jayawijaya-_170412201026-749.jpg',
              fit: BoxFit.cover,
              color: color.withOpacity(0.5),
              colorBlendMode: BlendMode.hardLight,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.image,
                    color: Colors.white.withOpacity(0.7),
                    size: 24,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}