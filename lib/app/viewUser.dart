import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/11/04/12/00/golden-hour-7569709_960_720.jpg',
        'username': 'AnnMp',
        'description': 'Pasandola bien'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/10/27/20/26/house-7551753_960_720.jpg',
        'username': 'AnnMp',
        'description': 'La casa enbrujada'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/06/26/17/52/porto-2444570_960_720.jpg',
        'username': 'AnnMp',
        'description': 'Una hermosa cazona'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/05/22/13/21/healthy-7213383_960_720.jpg',
        'username': 'AnnMp',
        'description': 'Lo mejor'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/11/01/05/18/coffee-7561288_960_720.jpg',
        'username': 'AnnMp',
        'description': 'Caffe para despertar'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: (_, index) {
                final post = data[index];
                return TiktokWidget(
                    image: post['img'],
                    username: post['username'],
                    description: post['description']);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tv, color: Colors.transparent),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Typicons.camera_outline,
                  ),
                  iconSize: 35,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TiktokWidget extends StatelessWidget {
  final String? username;
  final String? image;
  final String? description;
  const TiktokWidget({
    Key? key,
    this.username,
    this.image,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
            '$image',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: (17),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/user.jpeg"),
                        ),
                      ),
                      Text(
                        '  $username',
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        height: 25,
                        width: 58,
                        child: const Text(
                          '  Seguir',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$description',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(children: const [
                      Icon(
                        Typicons.notes,
                        size: 15,
                      ),
                      Text(
                        ' Dynamite - BTS   Dynamite - BTS   Dynamite - BTS   Dy',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            size: 35,
                          ),
                          Text(
                            '24',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: const [
                          Icon(
                            Typicons.message,
                            size: 35,
                          ),
                          Text(
                            '20',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: const [
                          Icon(
                            Typicons.arrow_forward_outline,
                            size: 35,
                          ),
                          Text(
                            '15',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.more_horiz,
                            size: 35,
                          ),
                        ],
                      ),
                      //
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            height: 28,
                            width: 28,
                            child: Image.asset('assets/portada.jpg'),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
