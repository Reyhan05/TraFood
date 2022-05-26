import 'package:flutter/material.dart';
import 'package:travell_in/page/detail/detail_food.dart';

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold);
final descTextStyle =
    baseTextStyle.copyWith(fontSize: 15.0, fontWeight: FontWeight.w400);
final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400);

class HomeFood extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<HomeFood> {
  List<String> judul = [
    "Babat",
    "Bakmi",
    "Ketoprak",
    "Mie aceh",
    "Mie ayam",
    "Mie Goreng",
    "Nasi goreng",
    "Rendang",
    "Sate",
  ];
  List<String> subJudul = [
    "Babat membutuhkan waktu 30 menit untuk memasaknya",
    "Bakmi membutuhkan waktu 20 menit untuk memasaknya",
    "Ketoprak  membutuhkan waktu 10 menit untuk memasaknya",
    "Mie aceh membutuhkan waktu 10 jam  untuk memasaknya",
    "Mie ayam membutuhkan waktu 10 hari  untuk memasaknya",
    "Mie Goreng membutuhkan waktu 15 Menit untuk memasaknya",
    "Nasi Goreng membutuhkan waktu 10 menit untuk memasaknya",
    "Rendang  membutuhkan waktu 30 menit untuk membakarnya",
    "Sate membutuhkan waktu 20 menit untuk Membakarnya",
  ];
  List<String> gambar = [
    "https://www.unileverfoodsolutions.co.id/dam/global-ufs/mcos/SEA/calcmenu/recipes/ID-recipes/red-meats-&-red-meat-dishes/gongso-tripe/main-header.jpg",
    "https://asset.kompas.com/crops/oo_-Lpy_-GwEhJweLlRYbbWRFK4=/16x430:734x908/750x500/data/photo/2019/12/08/5deca39d32512.png",
    "https://piknikdong.com/wp-content/uploads/2020/09/Resep-Ketoprak-Jakarta-Enak.jpg",
    "https://asset.kompas.com/crops/7tBNI9-TCa-oOq8tQTahf0ua1fg=/0x0:968x645/750x500/data/photo/2021/01/27/6010ce2cc1805.jpg",
    "https://img.qraved.co/v2/image/data/main-photo-1534449758924-x.png",
    "https://kbu-cdn.com/dk/wp-content/uploads/mie-nyemek-pedas.jpg",
    "https://www.masakapahariini.com/wp-content/uploads/2021/07/Nasi-Goreng-Spesial-Ayam-Kecombrang-780x440.jpg",
    "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/tips-pasti-jadi-bikin-rendang-pakai-rice-cooker.jpg",
    "https://rinaresep.com/wp-content/uploads/2021/08/Sate-ayam-kecap.jpg.webp",
  ];

  List<String> jmlh = [
    "30",
    "30",
    "50",
    "20",
    "20",
    "50",
    "35",
    "27",
    "45",
  ];

  List<String> bhn = [
    "- 1/4 kg daging sapi \n - 1/4 kg daging babat, - 15 bawang merah \n - 7 bawang putih \n - jahe \n - 4 kemiri \n - ketumbar secukupnya \n - sereh \n - kunir \n- 5 lembar daun jeruk \n - 4 lembar daun salam",
    "500 g mi telur segar/basah \n 1 sdm minyak sayur \n 1 sdm kecap asin \n 2 sdm minyak sayur \n 2 siung bawang putih, di cincang halus \n 250 g daging ayam, potong kecil",
    "2 buah tahu putih \n 2 buah ketupat, potong \n 50g taoge \n 100g bihun",
    "200g mie kuning basah \n 75g daging sapi tenderloin, potong dadu \n 4 siung bawang putih, iris tipis \n 3 butir bawang merah, iris tipis \n 1 buah tomat, potong kasar \n 3 butir bawang merah, iris tipis",
    "3 sdm minyak, untuk menumis \n 1 ekor ayam, cincang dagingnya, sisihkan tulang ayam, \n 20g bawang merah, haluskan \n 20g bawang putih, haluskan \n 1 batang daun bawang, iris \n 2 batang serai, memarkan \n 2 lembar serai \n 3 sdm Bango Kecap Manis \n 1 sdt Royco Kaldu Ayam ½ \n sdt merica putih bubuk \n 400 g mi telur segar",
    "200g mie telur, rebus, tiriskan \n 2 sdm Jawara Saus Sambal Hot \n 1 sdm Bango Kecap Manis \n 1.25 sdt garam \n 2 buah cabai merah, iris tipis \n 5 butir bakso sapi, iris tipis \n 2 buah sosis sapi, iris tipis \n 5 batang sawi hijau, potong-potong \n 1 batang daun bawang, iris tipis \n 1 sdm minyak, untuk menumis \n 4 buah telur mata sapi",
    "1600g nasi putih \n 2 butir telur, kocok lepas \n 1 buah daging paha ayam atas bawah, potong agak tipis \n 6 buah bakso sapi, iris \n 5 lembar kol, buang tulang, iris kasar \n 6 batang caisim, potong 3 cm \n 2 sdm Bango Kecap Manis \n 1 bungkus Royco Bumbu Komplit Nasi Goreng \n 1 sdt garam ⅛ sdt merica putih bubuk \n 2 batang daun bawang, iris miring \n 2 sdm minyak, untuk menumis",
    "1 kg daging sapi, potong dadu 5 cm \n 10 lembar daun jeruk purut \n 1 lembar daun kunyit, simpulkan \n 3 batang serai, memarkan \n 2 buah bunga lawang utuh \n 5 cm kayu manis \n 4 butir kapulaga \n 2 buah asam kandis/asam gelugor \n 1 bungkus Royco Kaldu Sapi \n 2.5 liter santan kelapa \n 6 sdm kelapa parut, sangrai hingga keluar minyaknya \n 5 sdm minyak sayur",
    "500 g ayam kampung, ambil dagingnya. \n 4 buah lontong, iris 1 cm \n 2 sdm bawang merah goreng",
  ];

  List<String> crMSK = [
    "1. Potong daging sesuai selera, rebus. Masukkan daun salam dan royco sapi \n 2. Tumis bumbu halus, masukkan daun jeruk, daun salam, dan sereh. Tambahan pula gula, garam. Lalu masukkan rebusan daging \n 3. Tunggu sampai empuk dan matang. Tata nasi, tauge, daun bawang. Tuang daging beserta kuahnya.",
    "Didihkan air, masukkan mi sebentar dalam air lalu tiriskan segera. Aduk minyak dan kecap hingga rata. Masukkan mie, aduk rata. Sisihkan. Topping: Tumis bawang putih hingga wangi. Masukkan potongan ayam, aduk hingga berubah warna dan kaku. Tambahkan jamur, aduk hingga layu Masukkan saus tiram, kecap manis, kecap asin, merica dan garam. Aduk hingga tercampur rata. Tuangi air, didihkan sebentar hingga kuah habis. Angkat. Kuah: Rebus kaldu, bawang putih, daun bawang, merica dan garam hingga mendidih lalu angkat. Penyajian: Taruh mi di dalam mangkuk. Beri Toppingnya lalu tambahkan sawi, tauge dan daun bawang. Sajikan dengan Kuahnya.",
    "Goreng tahu putih hingga berkulit dan blansir taoge dengan air panas. Kemudian, haluskan kacang tanah goreng, gula merah, cabai rawit merah dan bawang putih. Tambahkan garam, air asam jawa, dan air matang secukupnya, lalu ulek kembali hingga bumbu kacang halus. Pindahkan ke mangkuk. Ambil piring saji, susun dari bawah ke atas dengan urutan sebagai berikut: ketupat, taoge, tahu, dan bihun. Setelah semua bahan lengkap di piring, tuangkan bumbu kacang.",
    "Haluskan semua bumbu dengan menggunakan blender atau cobek.Panaskan minyak di wajan, lalu masukkan bawang merah, bawang putih. Tumis bersama bumbu halus hingga harum, lalu masukkan daging sapi. Aduk rata, masak hingga daging berubah warna, dan tumisan matang. Tambahkan taoge dan tomat. Masak hingga layu, lalu tambahkan garam, Kecap Manis Bango, Royco Kaldu Sapi, gula pasir, serta cuka. Masukkan mie, kemudian taburi dengan daun bawang. Aduk hingga tercampur rata lalu angkat dan matikan api.Sajikan mie goreng Aceh dengan acar dan taburi bawang goreng.",
    "Kaldu: Rebus tulang ayam, bawang bombay, daun bawang, dan seledri hingga mendidih. Masukkan sisa semua bahan, aduk. Masak di atas api kecil selama 30 menit. Sisihkan. Angkat. Sambal: Rebus cabai hingga matang. Angkat. Haluskan. Aduk rata bersama cuka dan air. Sisihkan. Tumis ayam kecap: Panaskan minyak goreng, tumis bawang merah dan bawang putih hingga harum. Masukkan irisan daun bawang, aduk. Masukkan serai dan daun salam, aduk. Masukkan daging ayam cincang, tumis hingga berubah warna dan daging kaku.Masukkan Bango Kecap Manis, Royco Kaldu Ayam, dan merica. aduk rata. Mie ayam kecap: Siapkan mangkuk. Rebus mie dalam air mendidih hingga matang. Angkat. Masukkan mie ke dalam mangkuk. Sendokkan tumis ayam kecap ke atasnya. Sajikan bersama kuah dan sambal rawit.",
    "1. Di dalam mangkuk, aduk rata mie, Saus Sambal Jawara Hot, Bango Kecap Manis, garam, dan merica. Sisihkan. \n 2. Panaskan wajan, tumis bumbu halus dan cabai hingga harum. \n 3. Masukkan bakso dan sosis, masak hingga matang. Tambahkan sawi, aduk rata. Masukkan mi, aduk hingga rata. Tambahkan daun bawang, aduk. Angkat. \n 4. Sajikan segera ditemani telur mata sapi.",
    "1. Panaskan minyak. Tumis bumbu halus sampai harum. Tambahkan telur di tengah wajan. Aduk sampai berbutir. \n 2. Masukkan ayam, aduk hingga matang. Masukkan bakso sapi, aduk sebentar. Tambahkan kol dan caisim. Aduk sampai setengah layu. \n 3 Masukkan nasi. Aduk-aduk. Tambahkan Bango Kecap Manis, Royco Bumbu Komplit Nasi Goreng, garam, dan merica. Aduk sampai matang. \n 4 Masukkan daun bawang. Aduk rata. Sajikan.",
    "1 Di dalam wajan, tumis bumbu halus, daun jeruk, dan serai hingga harum. \n 2Tambahkan daging sapi, santan, dan Royco Kaldu Sapi. Aduk terus menerus hingga daging matang. Kecilkan api. \n 3 Tambahkan sisa bahan, masak hingga kuah mengering dan daging sapi lunak. \n 4 Rendang sapi siap disajikan.",
    "1 Iris daging ayam dan potong berbentuk dadu. Haluskan bumbu perendam, lalu lumuri seluruh permukaan daging ayam. Diamkan kurang lebih selama 20 menit hingga 1 jam. \n 2 Daging ayam yang telah dibumbui dimasukkan ke dalam tusukkan sate. Sisihkan. \n 3 Bumbu olesan sate: Aduk rata minyak ayam, Bango Kecap Manis, dan gula merah. Kemudian, celupkan sate ke dalam bumbu olesan hingga merata. \n 4 Siapkan pembakaran, lalu bakar sate ayam. Sesekali balur daging dengan sisa bumbu pencelup. Setelah matang merata, angkat. \n 5 Kita siapkan bumbu kacang. Pertama, haluskan atau blender kacang yang telah digoreng, kemiri, dan cabai merah keriting. \n 6 Siapkan panci kecil. Masukkan air, garam gula merah, dan kacang beserta cabai yang telah dihaluskan. \n 7 Masak hingga mengental, lalu angkat. Siram sate ayam Ponorogo dengan saus kacang. Taburkan bawang merah goreng di atasnya. Sajikan selagi hangat dengan lontong."
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          final title = judul[index].toString();
          final subTitle = subJudul[index].toString();
          final jumlah = jmlh[index].toString();
          final bahan = bhn[index].toString();
          final cara = crMSK[index].toString();
          final img = gambar[index].toString();

          return Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: 200.0,
            padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0),
            child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(img),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: topContent(title, subTitle, jumlah),
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailFood(
                                itemJudul: title,
                                itemSub: subTitle,
                                qty: jumlah,
                                itemBahan: bahan,
                                itemCara: cara,
                                itemImage: img,
                              )));
                }),
          );
        },
      ),
    );
  }

  backgroundImage(String gambar) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.luminosity),
              image: NetworkImage(gambar))),
    );
  }

  topContent(String nama, String deksripsi, String stok) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            deksripsi,
            style: descTextStyle,
            textAlign: TextAlign.left,
          ),
          Container(
            height: 2.0,
            width: 80.0,
            color: Colors.blue,
          ),
          Text(
            stok,
            style: footerTextStyle,
          ),
        ],
      ),
    );
  }
}
