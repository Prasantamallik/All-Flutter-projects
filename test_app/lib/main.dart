import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:camera/camera.dart';

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
    // TODO: implement initState
    super.initState();
    final firstCamera = cameras.first;
    controller = CameraController(firstCamera, ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
    newMedia();
  }
  Widget getCamera(){
    // TODO: implement build
    if (!controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
        aspectRatio:
        controller.value.aspectRatio,
        child: CameraPreview(controller));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          getCamera();
          },
        child: Icon(Icons.photo_camera),
      ),
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: GridView.builder(
          itemCount: imageList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => FutureBuilder(
            builder: (context, snapshot) =>
                snapshot.connectionState == ConnectionState.done
                    ? Image.memory(
                        snapshot.data,
                        fit: BoxFit.contain,
                      )
                    : Container(
                        child: Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.lightBlue,
                          ),
                        ),
                      ),
            future: imageList[index].thumbDataWithSize(300, 300),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
