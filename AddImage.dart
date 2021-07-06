// import 'dart:html';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:transparent_image/transparent_image.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
//
// class addimage extends StatefulWidget {
//   const addimage({Key? key}) : super(key: key);
//
//   @override
//   _addimageState createState() => _addimageState();
// }
//
// class _addimageState extends State<addimage> {
//   int length;
//   bool uploading = false;
//   double val = 0;
//   CollectionReference imgref;
//   firebase_storage.Reference ref;
//   List<File> _image = [];
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("add Image"),
//         actions: [
//           FlatButton(
//               onPressed: () {
//                 uploadFile().whenComplete(() => Navigator.of(context).pop());
//               },
//             child: Text("Upload"),
//           ),
//
//         ],
//       ),
//       body: Stack(
//         children: [
//         GridView.builder(
//             itemCount: _image.length=1,
//             gridDelegate: sliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
//           return index == 0 ?
//           Center(
//             child: IconButton(
//               icon:Icons(Icons.add),
//               onPressed: (){
//                 chooseImage();
//               },
//             ),
//           )
//               :Container(
//             margin: EdgeInsets.all(3),
//             decoration: BoxDecoration(image: DecorationImage(image: FileImage(_image[index-1]))),
//           );
//         }),
//         uploading?Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               child: Text('Uploading..',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//             SizedBox(height: 30,),
//             CircularProgressIndicator(
//               value: val,
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
//             )
//           ],
//         ))
//         : Container(),
//       ],
//       ),
//       );
// }
//
//     sliverGridDelegateWithFixedCrossAxisCount({required int crossAxisCount}) {
//     }
//
//       ChooseImage() async {
//         var picker;
//         final pickedFile = await picker.getImage(source: ImageSource.gallery);
//         setState() {
//           try {
//             _image.add(File(pickedFile));
//           } catch (e, s) {
//             print(s);
//           }
//         }
//         if (pickedFile.path == null) retriveLostData();
//       }
//
//     class _image {
//   static int length;
//
//       static void add(File file) {}
//     }
//       Future<void> retriveLostData() async {
//       var picker;
//       final LostData response = await picker.getLostData();
//       if (response.isEmpty) {
//         return;
//   }
//   if (response.file!=null) {
//     setState(){
//      _image.add(File(response.file!.path));
//     }
//   }else{
//     print(response.file);
//   }
//   }
//   Future uploadFile() async {
//    int i =1;
//
//    for (var img in _image) {
//     setState((){
//       val = i / _image.length;
//     });
//    }
//     ref = firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('images/${path.basename(img.path)}');
//     await ref.putFile(img).whenComplete(() async{
//       await ref.getDownloadURL().then((value) {
//         imgRef.add({'url': value});
//         i++;
//       });
//
//     });
//
//   }
//   @override
//   void initState(){
//     super.initState();
//     img FirebaseFirestore.instance.collection('imageurl');
//   }
//   }
//
//
//
//
