import 'package:flutter/material.dart';

class UiAppBarSilver extends StatefulWidget {
  const UiAppBarSilver({Key? key}) : super(key: key);

  @override
  State<UiAppBarSilver> createState() => _UiAppBarSilverState();
}

class _UiAppBarSilverState extends State<UiAppBarSilver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          'Default AbbBar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Row(
            children: [
              Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.ac_unit),)),
              Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.usb_off),)),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.ac_unit),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.usb_off),),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrangeAccent,
                Colors.pink,
                Colors.deepPurpleAccent,
              ],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.amber,
            title: const Text(
              'SliverAppBar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Row(
                children: [
                  Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.ac_unit),)),
                  Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.usb_off),)),
                ],
              ),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.ac_unit),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.usb_off),),
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrangeAccent,
                    Colors.pink,
                    Colors.deepPurpleAccent,
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        Text('Silver Body', style: TextStyle(fontSize: 26.0),),
                      ],
                    ),
                  ),
                ),
              ),
            ])
          ),
        ],
      ),
    );
  }
}
