import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'filter_selector.dart';

class PhotoFilterScreen extends StatefulWidget {
  final String imagePath;

  const PhotoFilterScreen({
    super.key,
    required this.imagePath,
  });

  @override
  State<PhotoFilterScreen> createState() => _PhotoFilterScreenState();
}

class _PhotoFilterScreenState extends State<PhotoFilterScreen> {
  final _filters = [
    Colors.white,
    Colors.amber.withOpacity(0.3),
    Colors.blue.withOpacity(0.3),
    Colors.purple.withOpacity(0.4),
    Colors.green.withOpacity(0.3),
    Colors.red.withOpacity(0.3),
    Colors.orange.withOpacity(0.3),
    Colors.teal.withOpacity(0.3),
    Colors.pink.withOpacity(0.3),
    Colors.indigo.withOpacity(0.3),
    Colors.brown.withOpacity(0.3),
    Colors.grey.withOpacity(0.4),
    Colors.deepOrange.withOpacity(0.3),
    Colors.cyan.withOpacity(0.3),
    Colors.lime.withOpacity(0.3),
    Colors.deepPurple.withOpacity(0.3),
  ];

  final _filterNames = [
    'Original',
    'Warm',
    'Cool', 
    'Vintage',
    'Dramatic',
    'Soft',
    'Vibrant',
    'Moody',
    'Classic',
    'Bold',
    'Elegant',
    'Fresh',
    'Deep',
    'Bright',
    'Rich',
    'Subtle',
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);
  final _currentFilterName = ValueNotifier<String>('Original');
  final _filterIntensity = ValueNotifier<double>(0.5);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
    final index = _filters.indexOf(value);
    if (index >= 0 && index < _filterNames.length) {
      _currentFilterName.value = _filterNames[index];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Photo with Filter
            Positioned.fill(
              child: _buildPhotoWithFilter(),
            ),
            
            // Top Controls
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: _buildFilterLabel(),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildResetButton(),
                      const SizedBox(width: 8),
                      _buildSaveButton(),
                    ],
                  ),
                ],
              ),
            ),

            // Intensity Slider
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 120.0,
              child: _buildIntensitySlider(),
            ),

            // Filter Selector
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: _buildFilterSelector(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return ValueListenableBuilder(
          valueListenable: _filterIntensity,
          builder: (context, intensity, child) {
            // Check if file exists
            final file = File(widget.imagePath);
            if (!file.existsSync()) {
              return Container(
                color: Colors.grey[800],
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image_not_supported, color: Colors.white, size: 64),
                      SizedBox(height: 16),
                      Text(
                        'File gambar tidak ditemukan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            }

            return Image.file(
              file,
              color: color == Colors.white ? null : color.withOpacity(intensity),
              colorBlendMode: color == Colors.white ? null : BlendMode.color,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded) return child;
                return AnimatedOpacity(
                  opacity: frame == null ? 0 : 1,
                  duration: const Duration(milliseconds: 300),
                  child: child,
                );
              },
              errorBuilder: (context, error, stackTrace) {
                debugPrint('Error loading image: $error');
                return Container(
                  color: Colors.grey[800],
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline, color: Colors.white, size: 64),
                        SizedBox(height: 16),
                        Text(
                          'Gagal memuat gambar',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Silakan coba ambil foto lagi',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildFilterLabel() {
    return ValueListenableBuilder(
      valueListenable: _currentFilterName,
      builder: (context, filterName, child) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            filterName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      },
    );
  }

  Widget _buildResetButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: _resetFilter,
        icon: const Icon(
          Icons.refresh,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  Widget _buildSaveButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: _saveFilteredImage,
        icon: const Icon(
          Icons.download,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  void _resetFilter() {
    _filterColor.value = Colors.white;
    _currentFilterName.value = 'Original';
    _filterIntensity.value = 0.5;
  }

  Future<void> _saveFilteredImage() async {
    try {
      final Directory appDir = await getApplicationDocumentsDirectory();
      final String fileName = 'filtered_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final String newPath = path.join(appDir.path, fileName);
      
      // Copy file dengan nama baru
      await File(widget.imagePath).copy(newPath);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Filter ${_currentFilterName.value} disimpan!'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal menyimpan: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Widget _buildIntensitySlider() {
    return ValueListenableBuilder(
      valueListenable: _filterIntensity,
      builder: (context, intensity, child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              const Icon(Icons.opacity, color: Colors.white, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.white.withOpacity(0.3),
                    thumbColor: Colors.white,
                    overlayColor: Colors.white.withOpacity(0.2),
                    trackHeight: 2,
                  ),
                  child: Slider(
                    value: intensity,
                    min: 0.0,
                    max: 1.0,
                    onChanged: (value) {
                      _filterIntensity.value = value;
                    },
                  ),
                ),
              ),
              Text(
                '${(intensity * 100).round()}%',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}