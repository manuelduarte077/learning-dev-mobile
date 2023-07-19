import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_flutter_riverpod/config/constants/image_not_found.dart';

class NewsCard extends StatelessWidget {
  final String? title;
  final String? urlToImage;
  final String? author;

  const NewsCard({
    super.key,
    this.title,
    this.urlToImage,
    this.author,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: urlToImage == null
                  ? NotFoundImage.imageNotFound
                  : urlToImage.toString(),
              errorWidget: (context, string, _) {
                return const Icon(Icons.error);
              },
              width: 100,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ListTile(
                title: Text(
                  title.toString(),
                  style: textTheme.bodyMedium,
                  maxLines: 2,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 15,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          author.toString(),
                          style: textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.zero),
          )
        ],
      ),
    );
  }
}
