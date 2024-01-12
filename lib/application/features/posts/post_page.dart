import 'package:bloc_clean_arch/application/core/services/theme_services.dart';
import 'package:bloc_clean_arch/application/features/posts/postbloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class PostWrapper extends StatelessWidget {
  const PostWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(),
      child: const PostPage(),
    );
  }
}

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    BlocProvider.of<PostBloc>(context).add(PostRequestedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc- Clean Arch", style: TextStyle(fontSize: 26)),
        actions: [
          // IconButton(
          //     onPressed: () {
          //       BlocProvider.of<PostBloc>(context).add(PostRequestedEvent());
          //     },
          //     icon: const Icon(Icons.refresh)),
          Switch(
              value: Provider.of<ThemeServiceProvider>(context).isDarkMode,
              onChanged: (_) {
                Provider.of<ThemeServiceProvider>(context, listen: false)
                    .toggleTheme();
              }),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text('Dark', style: TextStyle(fontSize: 18)),
          )
        ],
      ),

      //-----------------------Body--------------------
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'All Posts',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(child: BlocBuilder<PostBloc, PostState>(
              builder: (context, state) {
                if (state is PostInitial) {
                  return const Center(
                      child:
                          Text('your post are waiting to swipe down refresh '));
                } else if (state is PostStateLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is PostStateLoaded) {
                  return ListView.builder(
                      itemCount: state.posts.length,
                      itemBuilder: (context, index) {
                        final postVal = state.posts[index];
                        return Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // postVal['Name'],
                                    postVal.firstname,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    // postVal['OrderID'],
                                    postVal.id.toString(),
                                    style: const TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // postVal['HCType'],
                                    postVal.type,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    // postVal['RideStatus'],
                                    postVal.status,
                                    style: const TextStyle(fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      });
                } else if (state is PostStateError) {
                  return Center(child: Text(state.err));
                } else {
                  return const Center(child: Text('Something went wrong'));
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
