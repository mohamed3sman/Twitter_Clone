import 'package:flutter/material.dart';

import 'custom_post_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey.withOpacity(0.3),
        ),
        TabBar(
          unselectedLabelColor: Colors.black.withOpacity(0.4),
          labelColor: Colors.black,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              child: Text(
                'For you',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.6)
                      : Colors.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Following',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black.withOpacity(0.6)
                      : Colors.white,
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.grey.withOpacity(0.3),
          height: 0.5,
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: TabBarView(children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                CustomPostWidget(
                  postImageLink:
                      'https://th.bing.com/th/id/R.b3ee895249c7b4cc3515d90fed8c011c?rik=RdEox%2fJQ%2bYSwdg&pid=ImgRaw&r=0',
                  postText: 'This is an art work..!',
                  profileImageLink:
                      'https://th.bing.com/th/id/R.cbb32f816e4593d607861d0999f3325a?rik=%2bJZJ3hkOe%2fAuqg&riu=http%3a%2f%2fwebneel.com%2fdaily%2fsites%2fdefault%2ffiles%2fimages%2fdaily%2f03-2017%2f9-fantasy-digital-painting-by-sharandula.jpg&ehk=1qJIGzMl1k%2fs%2b6Wje7lmRlqMgAMuU14s9P1cxYOKewk%3d&risl=&pid=ImgRaw&r=0',
                  profileName: 'Pixel Art Jouney',
                  userName: '@PixelArtJo...',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://th.bing.com/th/id/OIP.rxmUqgwaETPB4IhuFNQyZgHaE8?pid=ImgDet&rs=1',
                  postText: 'Elon musk and his compnay are doing miracles..!',
                  profileImageLink:
                      'https://th.bing.com/th/id/OIP.Z8neP0p3xNHuglCeGoT8GwHaFj?pid=ImgDet&rs=1',
                  profileName: 'New Scientist',
                  userName: '@newscientist',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://th.bing.com/th/id/R.961e5778b6f29d2fa8e544fa3349d7c1?rik=WMgJI0plKrV%2b5A&riu=http%3a%2f%2fscriptshadow.net%2fwp-content%2fuploads%2f2014%2f11%2fInterstellar-Images.jpg&ehk=OPTYRU2mZXXOVpkSpc1I3HEKbUewo%2bH0X0hLQvHxBCg%3d&risl=&pid=ImgRaw&r=0',
                  postText:
                      'Interstellar ..\nWatch the best movie on netflex..!',
                  profileImageLink:
                      'https://th.bing.com/th/id/R.d8479ab66758648c5b2a403249a65d57?rik=gsy2CFzDVRmEmw&pid=ImgRaw&r=0',
                  profileName: 'Netflix America',
                  userName: '@netflix',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzKRyq5WAAIAMZR?format=jpg&name=large',
                  postText:
                      'Here We Go..!\nIlkay Gundogan moves to Barcelona..',
                  profileImageLink:
                      'https://th.bing.com/th/id/OIP.NZQ7i7aprB-Vr_pvQJBc5AAAAA?pid=ImgDet&rs=1',
                  profileName: 'Fabrizio Romano',
                  userName: '@FabrizioRo..',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FyDD3WxXsAM0_Ty?format=jpg&name=medium',
                  postText: 'نصيحة ليك عزيزي المشاهد',
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1270676762607960064/NOzrFktV_400x400.jpg',
                  profileName: 'الدحيح-Da7ee7',
                  userName: '@1el_da7e7',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://static.scientificamerican.com/sciam/cache/file/D1C307C0-56B9-4824-80D5BA81B6D7A439_source.jpg?w=590&h=800&DEBEDA98-8592-401C-9ED617B2F79622EB',
                  postText:
                      'Physicists knew black holes eventually disappear particle by particle. Now they think everything else does, too',
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1197574569680392192/ZTfk5gZ3_400x400.png',
                  profileName: 'Scientific American',
                  userName: '@sciam',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzPgrBvakAEXTh8?format=jpg&name=4096x4096',
                  postText:
                      'Ship 25 completed a flight-like chill and spin of the Raptor engine pumps, stopping just before engine ignition.',
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1658134481696354304/HKddC4vC_400x400.jpg',
                  profileName: 'SpaceX',
                  userName: '@SpaceX',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FyvPqo4WwAICMQM?format=jpg&name=4096x4096',
                  postText: 'These two',
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1650412433557561344/m_cqtIdl_400x400.jpg',
                  profileName: 'FC Barcelona',
                  userName: '@FCBarcelona',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/Fw6ZZscagAE4Y2Q?format=jpg&name=large',
                  postText:
                      'After severe flooding hit parts of Australia last year, Starlink kits were hiked over landslides and installed at community hubs to allow residents to reconnect with loved ones 🛰️❤️',
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1657153527360397312/J5B7uZrv_400x400.jpg',
                  profileName: 'Starlink',
                  userName: '@Starlink',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://api.time.com/wp-content/uploads/2023/06/time100-companies-Eviation-Aircraft-2023.jpg',
                  postText:
                      'In September, a small plane took off from a runway in central Washington and returned eight minutes later. A short trip, but a big moment: the first flight of an all-electric passenger aircraft.',
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1631671081852366848/kFXyEudz_400x400.png',
                  profileName: 'TIME',
                  userName: '@TIME',
                ),
              ],
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzYgrjnX0AEgcFv?format=jpg&name=900x900',
                  postText: "Art, isn't it?",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1045579977067024384/S0luKMwQ_400x400.jpg',
                  profileName: 'Archillect',
                  userName: '@archillect',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzYCI3YWAAA9KlS?format=jpg&name=large',
                  postText: "",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1332450441972633605/hMvp1oD-_400x400.jpg',
                  profileName: 'poetical photos.',
                  userName: '@poeticalph...',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzDtpwGXsAEvn_A?format=jpg&name=large',
                  postText: "Crowded City..!🏆",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1605149215151235078/QlVBaoHu_400x400.jpg',
                  profileName: 'Manchester City',
                  userName: '@ManCity',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzT1lrQXwAEfp9Y?format=jpg&name=large',
                  postText: "Happy birthday GOAT✨🎈",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1417052605776375813/Jc9RL5o7_400x400.jpg',
                  profileName: 'UEFA Champions League',
                  userName: '',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzVE6d6WIBQPAzR?format=jpg&name=large',
                  postText:
                      "Angular 16.1 adds APIs for authoring bootstrap-agnostic ng add schematics.",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/727278046646915072/cb8U-gL6_400x400.jpg',
                  profileName: 'Angular',
                  userName: '@angular',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://miro.medium.com/v2/resize:fit:828/format:webp/1*GYQGoio4D-9z7C_oZx8hlQ.png',
                  postText:
                      "Dart 3 has arrived!  Learn about the new features in this article from@yusubov_kanan @r_FlutterDev",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1141781661551665153/BMnvVd2u_400x400.jpg',
                  profileName: 'Flutter Community',
                  userName: '@Flut...',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://www.popsci.com/uploads/2023/06/09/nasa-astronaut-selfie-science-social-media.jpg?auto=webp&width=1440&height=889.92',
                  postText:
                      "Bring some science to your social media timeline with these fantastic follows.",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1029084163780079616/KL96wS4C_400x400.jpg',
                  profileName: 'Popular Science',
                  userName: '@PopSci',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FzPWIAoWAAIfEf0?format=jpg&name=large',
                  postText: "Men's Spring-Summer 2024 Show. @maluma",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1615746856218132482/eETr_9ic_400x400.jpg',
                  profileName: 'Louis Vuitton',
                  userName: '@LouisVuitton',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://pbs.twimg.com/media/FxUcZV2WwBMfZle?format=jpg&name=4096x4096',
                  postText: "the perfect love story 💘",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1650412433557561344/m_cqtIdl_400x400.jpg',
                  profileName: 'FC Barcelona',
                  userName: '@FCBarcelona',
                ),
                CustomPostWidget(
                  postImageLink:
                      'https://static.scientificamerican.com/sciam/cache/file/8F9BEC7B-D309-4D18-A02B241C5A8164BE_source.jpg?w=590&h=800&81EB6B3D-C8D4-4E3F-BDCD943E312DB852',
                  postText:
                      "Elon Musk’s Secretive Brain Tech Company Debuts a Sophisticated Neural Implant",
                  profileImageLink:
                      'https://pbs.twimg.com/profile_images/1661856130535165953/zMoW6Sr1_400x400.jpg',
                  profileName: 'Neuralink',
                  userName: '@neuralink',
                ),
              ],
            ),
          ]),
        )
      ],
    );
  }
}
