import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'doneBeranda.dart';

class Hasil extends StatefulWidget {
  const Hasil({super.key});

  @override
  State<Hasil> createState() => _HasilState();
}

class _HasilState extends State<Hasil> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _imageFile;
  final TextEditingController jumlahSuaraCalegController =
      TextEditingController();
  final TextEditingController jumlahKeseluruhanSuaraController =
      TextEditingController();
  final Color _buttonColor = Colors.grey; // Initial button color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Lapor Hasil",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            if (_imageFile !=
                null) // Tampilkan gambar jika _imageFile tidak null
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                width: 320,
                height: 186,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFE8F1F9),
                  border: Border.all(
                    color: const Color(0xFF1877C9),
                    width: 3.0,
                  ),
                ),
                child: Image.asset(
                  _imageFile!.path,
                  width: 320,
                  height: 186,
                ),
              )
            else
              DottedBorder(
                color: Colors.black, // Warna dari garis putus-putus
                strokeWidth: 3, // Ketebalan dari garis putus-putus
                dashPattern: const [
                  10,
                  6
                ], // Pola dari garis putus-putus (10 piksel putus, 6 piksel ruang)
                child: Container(
                  width: 320,
                  height: 186,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFE8F1F9),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Silahkan masukkan gambar sesuai dengan hasil suara pada TPS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          final image = await _imagePicker.pickImage(
                            source: ImageSource.gallery,
                          );
                          if (image != null) {
                            setState(() {
                              _imageFile = image;
                            });
                          }
                        },
                        child: const Text(
                          "Pilih Gambar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Jumlah Suara Caleg",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: jumlahSuaraCalegController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      hintText: "Masukkan Jumlah Suara",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Jumlah Keseluruhan Suara",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: jumlahKeseluruhanSuaraController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      hintText: "Masukkan Jumlah Keseluruhan Suara",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                _showConfirmationDialog(context);
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                margin:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                width: 320,
                height: 48,
                decoration: BoxDecoration(
                  color: _buttonColor, // Warna latar belakang tombol
                  borderRadius:
                      BorderRadius.circular(8), // Sudut tombol yang bulat
                ),
                child: const Center(
                  child: Text(
                    "Simpan",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // Warna teks tombol
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.of(context).pop(); // Tutup dialog setelah 2 detik
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => const DoneBeranda(),
            ),
          );
        });
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            width: 285,
            height: 155,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage('assets/image/centang.png'),
                  width: 48, // Lebar gambar
                  height: 48, // Tinggi gambar
                ),
                SizedBox(height: 16), // Spasi antara gambar dan teks
                Text(
                  "Hasil suara berhasil disimpan",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
