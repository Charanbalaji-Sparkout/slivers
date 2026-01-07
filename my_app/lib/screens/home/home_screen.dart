import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/screens/home/widgets/home_screen_feature_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 70,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            pinned: false,
            titleSpacing: 0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsetsDirectional.only(start: 0, bottom: 16),
              centerTitle: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Nona',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            toolbarHeight: 280,
            backgroundColor: const Color.fromARGB(31, 255, 255, 255),
            expandedHeight: 280,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Best Healthy Diet For You.",
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Click Below and we will find the best plan based on you calorie needs',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 260,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
              Text(
                'Talk to a dietician',
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 500,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        HomeScreenFeatureWidget(
                          icon: Icons.cake,
                          label: 'Weight loss',
                          imageUrl:
                              'https://i.pinimg.com/1200x/ef/6e/1b/ef6e1bb1f85ad6410d6a65af58dc0cf6.jpg', 
                          onTap: ()=> context.push('/weight_loss'),
                        ),
                        SizedBox(height: 20,),
                        HomeScreenFeatureWidget(
                          icon: Icons.face,
                          label: 'Weight gain',
                          imageUrl:
                              'https://i.pinimg.com/736x/b0/af/7c/b0af7cae882c0897e8d48e5a8ed858b8.jpg', 
                            onTap: () =>context.push("/weight_gain"),
                        ),
                        SizedBox(height: 20,),
                        HomeScreenFeatureWidget(
                          icon: Icons.extension,
                          label: 'Diet',
                          imageUrl:
                              'https://i.pinimg.com/1200x/86/2a/7c/862a7c4b53c7a6c1b54a29a7485b5db1.jpg', 
                          onTap: ()=> context.push('/diet'),
                          
                        ),
                        SizedBox(height: 20,),
                        HomeScreenFeatureWidget(
                          icon: Icons.directions,
                          label: 'Excerice',
                          imageUrl:
                              'https://i.pinimg.com/736x/f8/ed/9a/f8ed9a31528c27556e342fda9f19b8f3.jpg', 
                          onTap: () => context.push('/excercise'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}
