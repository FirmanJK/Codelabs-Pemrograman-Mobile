import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'photo_filter_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> with WidgetsBindingObserver {
  CameraController? _controller;
  List<CameraDescription>? _cameras;
  bool _isInitialized = false;
  bool _isTakingPicture = false;
  int _currentCameraIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeCamera();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _disposeController();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = _controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      _disposeController();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCamera();
    }
  }

  Future<void> _initializeCamera() async {
    try {
      _cameras = await availableCameras();
      if (_cameras != null && _cameras!.isNotEmpty) {
        await _createCameraController(_cameras![_currentCameraIndex]);
      }
    } catch (e) {
      debugPrint('Error initializing camera: $e');
      if (mounted) {
        _showErrorSnackBar('Gagal menginisialisasi kamera: $e');
      }
    }
  }

  Future<void> _createCameraController(CameraDescription camera) async {
    final CameraController cameraController = CameraController(
      camera,
      ResolutionPreset.medium,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    _controller = cameraController;

    try {
      await cameraController.initialize();
      
      // Disable flash
      await cameraController.setFlashMode(FlashMode.off);
      
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    } catch (e) {
      debugPrint('Error creating camera controller: $e');
      if (mounted) {
        _showErrorSnackBar('Gagal membuat controller kamera: $e');
      }
    }
  }

  Future<void> _disposeController() async {
    final CameraController? cameraController = _controller;
    if (cameraController != null) {
      _controller = null;
      if (mounted) {
        setState(() {
          _isInitialized = false;
        });
      }
      await cameraController.dispose();
    }
  }

  Future<void> _takePicture() async {
    final CameraController? cameraController = _controller;
    
    if (cameraController == null || 
        !cameraController.value.isInitialized || 
        _isTakingPicture) {
      return;
    }

    setState(() {
      _isTakingPicture = true;
    });

    try {
      final XFile picture = await cameraController.takePicture();
      
      // Simpan foto ke direktori aplikasi
      final Directory appDir = await getApplicationDocumentsDirectory();
      final String fileName = 'photo_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final String filePath = path.join(appDir.path, fileName);
      
      await picture.saveTo(filePath);

      if (mounted) {
        // Navigasi ke layar filter dengan foto yang diambil
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PhotoFilterScreen(imagePath: filePath),
          ),
        );
      }
    } catch (e) {
      debugPrint('Error taking picture: $e');
      if (mounted) {
        _showErrorSnackBar('Gagal mengambil foto: $e');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isTakingPicture = false;
        });
      }
    }
  }

  Future<void> _switchCamera() async {
    if (_cameras == null || _cameras!.length < 2 || _isTakingPicture) return;

    setState(() {
      _isInitialized = false;
    });

    try {
      await _disposeController();
      
      _currentCameraIndex = (_currentCameraIndex + 1) % _cameras!.length;
      await _createCameraController(_cameras![_currentCameraIndex]);
    } catch (e) {
      debugPrint('Error switching camera: $e');
      if (mounted) {
        _showErrorSnackBar('Gagal mengganti kamera: $e');
      }
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Camera Preview or Loading
            Positioned.fill(
              child: _buildCameraPreview(),
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
                  const Text(
                    'Camera',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (_cameras != null && _cameras!.length > 1)
                    IconButton(
                      onPressed: (_isInitialized && !_isTakingPicture) ? _switchCamera : null,
                      icon: Icon(
                        Icons.flip_camera_ios,
                        color: (_isInitialized && !_isTakingPicture) ? Colors.white : Colors.grey,
                        size: 30,
                      ),
                    )
                  else
                    const SizedBox(width: 48),
                ],
              ),
            ),

            // Bottom Controls
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 60),
                  
                  // Capture Button
                  GestureDetector(
                    onTap: (_isInitialized && !_isTakingPicture) ? _takePicture : null,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: (_isInitialized && !_isTakingPicture) ? Colors.white : Colors.grey,
                          width: 4,
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: _isTakingPicture ? Colors.grey : 
                                 _isInitialized ? Colors.white : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: _isTakingPicture
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.black,
                                  strokeWidth: 2,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCameraPreview() {
    if (_controller != null && _isInitialized) {
      return CameraPreview(_controller!);
    } else if (_cameras == null || _cameras!.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.camera_alt,
              color: Colors.white54,
              size: 64,
            ),
            SizedBox(height: 16),
            Text(
              'Kamera tidak tersedia',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    } else {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Colors.white),
            SizedBox(height: 16),
            Text(
              'Menginisialisasi kamera...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }
  }
}