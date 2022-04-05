import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
                image: const NetworkImage(
                    'https://media.istockphoto.com/photos/programming-code-abstract-technology-background-of-software-deve-picture-id537331500?b=1&k=20&m=537331500&s=170667a&w=0&h=-OawbbTR9TwfewLYKlaU-_cn1m_dq1WLpBK1qubFhGI='),
              ),
              Positioned(
                  bottom: -70.0,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/avatar.webp'),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          const ListTile(
            title: Center(
                child: Text(
              'Firly Afriansyah',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
            subtitle: Center(
                child: Text('Front End Developer',
                    style: TextStyle(fontFamily: 'Poppins'))),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Row(
              children: [
                Expanded(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.favorite),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/about');
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.android),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/project');
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.museum),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/skill');
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.book),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Row(
              children: const [
                Expanded(
                    child: ListTile(
                  title: Center(
                    child: Text(
                      '39',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      'Projects',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
                Expanded(
                    child: ListTile(
                  title: Center(
                    child: Text(
                      '529',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      'Following',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
                Expanded(
                    child: ListTile(
                  title: Center(
                    child: Text(
                      '5834',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      'Followers',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.78,
            child: const ListTile(
              title: Text('About Me',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
              subtitle: Text(
                  'I\'m a Web developer located in Cikarang, Indonesia. I have a serious passion in web desainer / Slicing design, and make Apps with best User Experience. Well-organised person, problem solver, high attantion to detail. Like Sports but not expert, Tech enthusiast, Young man, and Single. Interested to working in Technology with positive people.',
                  style: TextStyle(fontFamily: 'Poppins')),
            ),
          )
        ],
      ),
    );
  }
}
