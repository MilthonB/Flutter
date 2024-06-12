import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  static final name = 'infinitescroll_screen';

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  List<int> imagenes = [1,2,3,4,5];
  final ScrollController scrollCOntroller = ScrollController();

  bool isLoading = false;
  bool isMounted = true;

  void AddFiveImage(){
    final lastID = imagenes.last;

    imagenes.addAll(
      [1,2,3,4,5].map((e)=> lastID + e)
    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollCOntroller.addListener((){

      if((scrollCOntroller.position.pixels + 500) >= scrollCOntroller.position.maxScrollExtent ){
        loadNextPage();
      }

    });
  }

  Future loadNextPage() async{

    if( isLoading ) return;
    isLoading = true;

    setState(() {
      
    });

    await Future.delayed(Duration(seconds: 2));
    AddFiveImage();
    isLoading = false;
    // todo: revisar si esta montado el component / widget
    if( !isMounted ) return;
    setState(() {});

    moveScrollToBottom();

  }

  @override
  void dispose() {
    scrollCOntroller.dispose();
    isMounted = false;
    super.dispose();
  }


  Future<void> onRefresh()async{
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));
    if( !isMounted )return;

    isLoading = false;
    final lastId = imagenes.last;
    imagenes.clear();
    imagenes.add(lastId+1);
    AddFiveImage();


  }

  void moveScrollToBottom(){
    if(scrollCOntroller.position.pixels + 100 <= scrollCOntroller.position.maxScrollExtent){
      return;
    }

    scrollCOntroller.animateTo(
      scrollCOntroller.position.pixels + 120,
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('InfiniteScroll'),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: 
        isLoading ?
        SpinPerfect(
          infinite: true,
          child: Icon(Icons.refresh_rounded)
          ):
          FadeIn(child: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          edgeOffset: 10,
          strokeWidth: 3,
          onRefresh: onRefresh,
          child: ListView.builder(
            controller: scrollCOntroller,
            physics: BouncingScrollPhysics(),
            //primary: false,
            itemCount: imagenes.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: AssetImage('assets/Images/jar-loading.gif'), 
                image: NetworkImage('https://picsum.photos/id/${imagenes[index]}/500/300')
              );
            },
          ),
        ),
      ),
    );
  }
}
