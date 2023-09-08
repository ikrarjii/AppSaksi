import 'package:app_saksi_1/pages/profil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'laporHasil.dart';

class DoneBeranda extends StatefulWidget {
  const DoneBeranda({super.key});

  @override
  State<DoneBeranda> createState() => _DoneBerandaState();
}

class _DoneBerandaState extends State<DoneBeranda> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              // Navigasi ke halaman tujuan di sini, contohnya:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Profil(),
                ),
              );
            },
            child: Image.asset(
              'assets/image/profil.png',
              width: 24, // Sesuaikan lebar gambar sesuai kebutuhan
              height: 24, // Sesuaikan tinggi gambar sesuai kebutuhan
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                'assets/image/notif.svg',
                semanticsLabel: 'My SVG Image',
                height: 24,
                width: 24,
              ),
            ),
          ],
          elevation: 0,
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 5,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: screenWidth - 40,
                      height: 87,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 24),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/frame.png'),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Haloo, Hamzah Dg Tappu",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "7310072110000002",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenWidth < 400 ? 10 : 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 90),
                      Container(
                        height: 102,
                        width: 256,
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                   Text(
                                    "Lokasi TPS",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "TPS 1 Samata",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                   Text(
                                    "Kecamatan",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "SombaOpu",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Dapil",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "1 Gowa",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(6), // Border radius of 6
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 196,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/image3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "120",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Jumlah Suara",
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 74,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Ditolak",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 74,
                              height: 24,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 242, 193, 189),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 20, bottom: 12),
              child: Row(
                children: const [
                  Text(
                    "Pemetaan TPS",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Hasil(),
                  ),
                );
              },
              child: SizedBox(
                width: screenWidth - 50,
                child: Column(
                  children: [
                    Column(
                      children: const [
                        ListTile(
                          leading: Image(
                              image: AssetImage('assets/image/maps1.png')),
                          title: Text(
                            "TPS 1",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            "Kelurahan SombaOpu",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                        ListTile(
                          leading: Image(
                              image: AssetImage('assets/image/maps1.png')),
                          title: Text(
                            "TPS 1",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            "Kelurahan SombaOpu",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                        ListTile(
                          leading: Image(
                              image: AssetImage('assets/image/maps1.png')),
                          title: Text(
                            "TPS 1",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            "Kelurahan SombaOpu",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 20, bottom: 12),
              child: Row(
                children: const [
                  Text(
                    "Saksi TPS",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Hasil(),
                  ),
                );
              },
              child: SizedBox(
                width: screenWidth - 50,
                child: Column(
                  children: [
                    Column(
                      children: const [
                        ListTile(
                          leading:
                              Image(image: AssetImage('assets/image/acc.png')),
                          title: Text(
                            "Anies Baswedan",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            "TPS 1 SombaOpu",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                        ListTile(
                          leading:
                              Image(image: AssetImage('assets/image/acc.png')),
                          title: Text(
                            "Ganjar",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            "TPS 2 SombaOpu",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                        ListTile(
                          leading:
                              Image(image: AssetImage('assets/image/acc.png')),
                          title: Text(
                            "Prabowo Subianto",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            "TPS 3 SombaOpu",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
