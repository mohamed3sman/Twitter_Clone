import 'package:flutter/material.dart';

class SpacesViewBody extends StatelessWidget {
  const SpacesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hapenning Now',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Spaces going on right now',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.pinkAccent,
                    size: 30,
                  ),
                  Text(
                    'Trending',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 164, 58, 183),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.multitrack_audio,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'LIVE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 25,
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: Text(
                                'Are you NEXT Ready?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Health news . Education . Careers',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      'https://i.pinimg.com/originals/72/20/c4/7220c4ee3f3a756356c1ca7b1ab230df.jpg',
                                      width: 30,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      'https://th.bing.com/th/id/OIP.6XQo_VQmwSmtoF-X8YjCXQHaHa?pid=ImgDet&rs=1',
                                      width: 30,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      'https://i.pinimg.com/originals/72/20/c4/7220c4ee3f3a756356c1ca7b1ab230df.jpg',
                                      width: 30,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '1324 listening',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 13),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  'https://th.bing.com/th/id/OIP.6XQo_VQmwSmtoF-X8YjCXQHaHa?pid=ImgDet&rs=1',
                                  width: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Will Smith',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Text(
                                  'Host',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
