import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final List<String> _image = [
    "assets/p2.webp",
    "assets/p3.jpeg",
    "assets/post1.jpg",
    "assets/post2.jpeg",
    "assets/post3.jpg",
    "assets/post4.jpeg",
    "assets/p2.webp",
    "assets/p3.jpeg",
    "assets/post1.jpg",
    "assets/post2.jpeg",
    "assets/post3.jpg",
    "assets/post4.jpeg",
    "assets/p2.webp",
    "assets/p3.jpeg",
    "assets/post1.jpg",
    "assets/post2.jpeg",
    "assets/post3.jpg",
    "assets/post4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            _sliverAppBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                // const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      _circleImage(imageUrl: "assets/profile.jpeg", diameter: 40),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "What's on your mind?",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Divider(),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  height: _height * 0.05,
                  child: Row(
                    children: [
                      _button("Live", const Icon(Icons.note)),
                      const VerticalDivider(thickness: 1,),
                      _button("Photo", const Icon(Icons.note)),
                      const VerticalDivider(thickness: 1,),
                      _button("Room", const Icon(Icons.note)),
                    ],
                  ),
                ),

                Divider(
                  color: Colors.grey.shade400,
                  thickness: 8,
                  height: 30,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text("Audio & video rooms"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Create room"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue.shade50),
                        ),
                      ),
                      const SizedBox(width: 10),
                      for(int i = 0; i<_image.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: _circleImage(imageUrl: _image[i], diameter: (MediaQuery.of(context).size.height * 0.09) - 20),
                        )
                    ],
                  ),
                ),

                Divider(
                  color: Colors.grey.shade400,
                  thickness: 8,
                  height: 30,
                ),

                SizedBox(
                  height: _height * 0.25,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/profile.jpeg",
                            width: MediaQuery.of(context).size.width * 0.25,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      for (int i = 0; i < _image.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              _image[i],
                              width: MediaQuery.of(context).size.width * 0.25,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                    ],

                  ),
                ),

                Divider(
                  color: Colors.grey.shade400,
                  thickness: 8,
                  height: 30,
                ),
              ]),
            ),


            _feedWidget(),
          ],
        ),
      ),
    );
  }

  Widget _circleImage({required String imageUrl, required double diameter}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        imageUrl,
        height: diameter,
        width: diameter,
        fit: BoxFit.cover,
      ),
    );
  }

  _button(String label, Icon iconData) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          iconData,
          const SizedBox(width: 2),
          Text(label)
        ],
      ),
    );
  }

  Widget _sliverAppBar() {
    return SliverAppBar(
      title: const Text("facebook"),
      titleSpacing: 12,
      centerTitle: false,
      floating: true,
      elevation: 0.5,
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search,),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }

  Widget _feedWidget() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
        Container(
          height: 100,
        ),
      ]),
    );
  }

  Widget _photoPost({required int photoNum, required String caption}) {
    return Container(
      height: 100,
    );
  }

  Widget _textPost({required String textContent}) {
    return Text(textContent);
  }
}
