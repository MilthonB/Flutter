import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slide = <SlideInfo>[
  SlideInfo(
      'Buscar la comida',
      'Labore aute fugiat dolor mollit officia duis veniam est veniam id Lorem pariatur.',
      'assets/Images/1.png'),
  SlideInfo(
      'Buscar la comida',
      'Et non do cupidatat irure. Sit reprehenderit ut sit id nostrud aliqua Lorem adipisicing laboris nisi duis mollit cupidatat.',
      'assets/Images/2.png'),
  SlideInfo(
      'Buscar la comida',
      'Deserunt aute commodo ad est amet excepteur est sit.',
      'assets/Images/3.png'),
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  static final name = 'apptutorial_screen';

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener((){
      final page = pageController.page ??  0;

      if( !endReached && page >= slide.length - 1.5 ){
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: pageController,
          physics: BouncingScrollPhysics(),
          children: slide
              .map((slideData) => _Slide(
                  title: slideData.title,
                  caption: slideData.caption,
                  imageUrl: slideData.imageUrl))
              .toList(),
          ),

          Positioned(
            right: 20,
            top: 40,
            child: TextButton(child: Text('Salir'),onPressed: () {
              return context.pop();
            },)
            ),

            endReached ? 
            Positioned(
              bottom: 30,
              right: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(onPressed: (){
                  context.pop();
                }, child: Text('Comenzar')),
              )
            ): SizedBox(),

        ]
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: captionStyle,
            )
          ],
        ),
      ),
    );
  }
}
