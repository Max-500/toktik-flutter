import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:toktik/providers/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DiscoverProvider provider = context.watch<DiscoverProvider>();
    return  Scaffold(
      body: provider.initialLoading 
      ?  const Center(child: CircularProgressIndicator( strokeWidth: 2, ))
      :  VideoScrollableView(videos: provider.listVideos)
      );
  }
}