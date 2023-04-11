import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_flutter_riverpod/models/article_model.dart';

import '../../config/constants/image_not_found.dart';

class NewsDetailsScreen extends StatelessWidget {
  final Article article;

  const NewsDetailsScreen({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            expandedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              titlePadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              title: Text(
                article.title ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              background: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 4,
                  sigmaY: 4,
                  tileMode: TileMode.mirror,
                ),
                child: CachedNetworkImage(
                  imageUrl: article.urlToImage == null
                      ? NotFoundImage.imageNotFound
                      : article.urlToImage.toString(),
                  errorWidget: (context, string, _) {
                    return const Icon(Icons.error);
                  },
                  width: 100,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 20),
                ListTile(
                  leading: const Icon(Icons.newspaper, size: 30),
                  title: Text(
                    article.title ?? '',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      article.description ?? '',
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_today),
                      const SizedBox(width: 10),
                      Text(
                        article.publishedAt ?? '',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.person),
                      Expanded(
                        child: Text(
                          article.author ?? '',
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
