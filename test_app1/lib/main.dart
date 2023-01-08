import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' show join;
import 'package:test_app1/photoScreen.dart';
import 'package:gallery_saver/gallery_saver.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<AssetEntity> imageList = [];
  CameraController controller;
  Future<void> _initializeControllerFuture;
  final picker = ImagePicker();
  void newMedia() async {
    List<AssetPathEntity> albums =
        await PhotoManager.getAssetPathList(onlyAll: true);
    List<AssetEntity> photos = await albums[0].getAssetListPaged(0, 1198);
    print(photos);
    setState(() {
      imageList.addAll(photos);
    });
  }

  @override
  void initState() {
    super.initState();
    final firstCamera = cameras.first;
    controller = CameraController(firstCamera, ResolutionPreset.high);
    _initializeControllerFuture = controller.initialize();
    newMedia();
  }

  Widget getCamera() {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;
            ImagePicker.pickImage(source: ImageSource.camera)
        .then((File recordedImage) {
      if (recordedImage != null && recordedImage.path != null) {
        setState(() {
        });
        GallerySaver.saveImage(recordedImage.path).then((String path) {
          setState(() {
          });
        });
      }
        }
            // Construct the path where the image should be saved using the
            // pattern package.
            
              //   // Store the picture in the temp directory.
              //   // Find the temp directory using the `path_provider` plugin.
           
            //GallerySaver.saveImage(path1);
            // // Attempt to take a picture and log where it's been saved.
            await controller.takePicture(path1);
            print(path1);
            // // If the picture was taken, display it on a new screen.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(imagePath: path1),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: Icon(Icons.photo_camera),
      ),
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the Future is complete, display the preview.
              return CameraPreview(controller);
            } else {
              // Otherwise, display a loading indicator.
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
        // child: GridView.builder(
        //   itemCount: imageList.length,
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        //   itemBuilder: (context, index) => FutureBuilder(
        //     builder: (context, snapshot) =>
        //         snapshot.connectionState == ConnectionState.done
        //             ? Image.memory(
        //                 snapshot.data,
        //                 fit: BoxFit.contain,
        //               )
        //             : Container(
        //                 child: Center(
        //                   child: CircularProgressIndicator(
        //                     backgroundColor: Colors.lightBlue,
        //                   ),
        //                 ),
        //               ),
        //     future: imageList[index].thumbDataWithSize(300, 300),
        //   ),
        // ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
