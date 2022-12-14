import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koopa/app/modules/stats/controllers/stats_controller.dart';

class StatsRankingView extends GetView<StatsController> {
  const StatsRankingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Row(
                      children: const [
                        Icon(Icons.attachment),
                        Text('All categories'),
                      ],
                    ),
                  )
                ],
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Row(
                      children: const [
                        Icon(Icons.attachment),
                        Text('All chains'),
                      ],
                    ),
                  )
                ],
                onChanged: (_) {},
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color(0xfffafafa),
          floating: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, index) => Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
                  child: Row(
                    children: [
                      Text('${index + 1}'),
                      const SizedBox(width: 12),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Bored Ape Yacht Club'),
                          SizedBox(height: 12),
                          Text(
                            '+ More',
                            style: TextStyle(color: Color(0xff7e7e7d)),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        children: const [
                          Text('728.73'),
                          SizedBox(height: 8),
                          Text('47.8%'),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(),
              ],
            ),
            childCount: 100,
          ),
        )
      ],
    );
  }
}
