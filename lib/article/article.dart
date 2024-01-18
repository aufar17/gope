import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gope/article/detailarticle.dart';
import 'package:gope/main.dart';
import 'package:gope/navigationbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


// ignore: must_be_immutable
class Articlepage extends StatelessWidget {
   Articlepage({super.key});

   List GopeticleNames = [
    "Zero Waste",
    "Kind of waste ",
    "New Energy",
    "5R",
   ];

   List<String> GopeticleImage = [
    'assets/image/zerowaste.png',
    'assets/image/ecofriendly.png',
    'assets/image/savetheplanet.png',
    'assets/image/3r.png',
    'assets/image/ORI.png',
    'assets/image/gogreen.png',
   ];

   List<String> listdeskripsi = [
  'Saat orang pertama kali mendengar ‘zero waste’, reaksi yang paling sering terdengar adalah “mana mungkin, nggak akan bisa hidup tanpa membuat sampah”. Dan memang benar, di society kita memang tidak mudah untuk tidak membuat sampah. Tidak mudah menemukan makanan tanpa plastik di supermarket walaupun itu sayur dan buah. Kita semua adalah bagian dari aliran limbah ekonomi. Banyak miskonsepsi yang terjadi mengenai zero waste lifestyle yang membuat orang yang mendengar kata itu bertanya-tanya dan bahkan berubah menjadi pesimis.\n\n Zero waste adalah filosofi yang dijadikan sebagai gaya hidup demi mendorong kita untuk bijak dalam mengkonsumsi dan memakismalkan siklus hidup sumber daya sehingga produk-produk bisa digunakan kembali. Zero waste juga soal menjauhi single use plastic atau plastik yang hanya digunakan sekali. Tujuannya adalah agar sampah tidak dikirim ke landfill. Jadi zerowaste itu tidak hanya mengenai recycle atau mendaur ulang. Ini miskonsepsi yang umumnya terjadi. Padahal sebenernya zero waste itu dimulai dari Refuse, Reduce, and Reuse. Saat benar-benar sudah tidak memungkinkan untuk 3 hal tadi, baru dilakukan Recycle dan Rot.\n\n Intinya zero waste menantang kita semua untuk mengevaluasi gaya hidup kita dan melihat bagaimana sesuatu yang kita konsumsi bisa berdampak negatif terhadap lingkungan. Kenyamanan yang berbentuk dengan produk murah, material yang tidak bisa didaur ulang merusak kesehatan planet kita dan berkembangnya manusia dan spesies hewan di seluruh dunia. Bea Johnson dari Zero Waste Home mempopulerkan 6 R ini: “Rethink, Refuse, Reduce, Reuse, Recycle, Rot” atau di dalam bahasa indonesia “Menolak, Mengurangi, Menggunakan Kembali, Daur Ulang, Membusukkan.”. 5R ini menjadi pegangan untuk mengarah kepada gaya hidup tanpa limbah sehingga dapat menciptakan lebih sedikit limbah dan menggunakan sumber daya alam secara bijaksana.\n\n\n https://zerowaste.id/zero-waste-for-beginners/what-is-zero-waste-anyway/',
  '1. Sampah Organik\n\n Sampah organik merupakan sampah yang sifatnya mudah terurai di alam (mudah busuk) seperti sisa makanan, daun-daunan, atau ranting pohon. Sampah organik umumnya diwadahi dengan tempat sampah berwarna hijau. Dengan memisahkan sampah organik dalam wadah tersendiri, maka dapat memudahkan sampah organik diproses menjadi pupuk kompos.\n\n\n 2. Sampah Anorganik\n\n Sampah anorganik merupakan sampah yang sifatnya lebih sulit diurai seperti sampah plastik, kaleng, dan styrofoam. Sampah anorganik umumnya diwadahi dengan tempat sampah berwarna kuning. Dengan adanya tempat sampah khusus maka dapat mempermudah pemanfaatan sampah anorganik sebagai kerajinan daur ulang atau daur ulang di pabrik.\n\n\n 3. Sampah Bahan Berbahaya Beracun (B3)\n\n Sampah B3 umumnya diwadahi dengan tempat sampah berwarna merah. Sampah B3 merupakan sampah yang dapat membahayakan manusia, hewan, atau lingkungan sekitar. Contoh sampah B3 yaitu sampah kaca, kemasan detergen atau pembersih lainnya, serta pembasmi serangga dan sejenisnya. Agar meminimalisir dampak yang mungkin ditimbulkan, sampah B3 perlu dikelompokkan secara khusus dalam satu wadah.\n\n\n 4. Sampah Kertas\n\n Sampah kertas juga merupakan jenis sampah yang dapat dipilah secara khusus dalam wadah tempat sampah berwarna biru.Pemilahan sampah kertas berguna untuk memudahkan proses daur ulang kertas. Karton, potongan kertas, pamflet, bungkus kemasan berbahan kertas, dan buku juga termasuk dalam jenis sampah kertas.\n\n\n 5. Sampah Residu \n\n Sampah residu merupakan sampah sisa di luar keempat jenis sampah di atas. Tempat sampah yang diperuntukan bagi tempat sampah residu umumnya berwarna abu-abu. Contoh sampah residu yaitu seperti popok bekas, bekas pembalut, bekas permen karet, atau puntung rokok.\n\nhttps://ditsmp.kemdikbud.go.id/yuk-mengenal-5-jenis-sampah/',
  'Sampah memang menjadi masalah di kota – besar di seluruh dunia., khususnya di Indonesia seperti menumpuknya sampah di jalan – jalan  protokol Kota bandung. Belum lagi konflik antara pemerintah dengan warga  masyarakat yang lokasinya menjadi tempat pembuangan akhir (TPA).\n\nDi negara negara maju seperti Denmark, Swiss, Amerika dan Prancis. Mereka  telah memaksimalkan proses pengolahan sampah. Tidak hanya mengatasi bau  busuk saja tapi sudah mengubah sampah – sampah ini menjadi energi  listrik. Khusus di Denmark 54 persen sampah diubah menjadi energi listrik.\n\nTeknologi pengolahan sampah ini untuk menjadi energi listrik pada  prinsipnya sangat sederhana sekali yaitu:\n\n 1. Sampah dibakar sehingga menghasilkan panas (proses konversi thermal)\n 2.Panas dari hasil pembakaran dimanfaatkan untuk mengubah air menjadi uap dengan bantuan boiler\n 3. Uap bertekanan tinggi digunakan untuk memutar bilah turbin\n 4. Turbin dihubungkan ke generator dengan bantuan poros\n Generator menghasilkan listrik dan listrik dialirkan ke rumah – rumah atau ke pabrik.\n\n\n Proses Konversi Therma \n\n Proses  konversi thermal dapat dicapai melalui beberapa cara, yaitu insinerasi, pirolisa, dan gasifikasi. Insinerasi pada dasarnya ialah proses oksidasi bahan-bahan organik menjadi bahan anorganik. Prosesnya sendiri merupakan  reaksi oksidasi cepat antara bahan organik dengan oksigen.\n\nPembangkit listrik tenaga sampah yang banyak digunakan saat ini  menggunakan proses insenerasi salah. Sampah dibongkar dari truk pengakut sampah dan diumpankan ke inserator. Di dalam  inserator sampah dibakar. Panas yang dihasilkan dari hasil pembakaran  digunakan untuk mengubah air menjadi uap bertekanan tinggi. Uap dari  boiler langsung ke turbin. Sisa pembakaran seperti debu diproses lebih  lanjut agar tidak mencemari lingkungan (truk mengangkut sisa proses pembakaran).\n\nTeknologi pengolahan sampah ini memang lebih menguntungkan dari  pembangkit listrik lainnya. Sebagai ilustrasi: 100.000 ton sampah  sebanding dengan 10.000 ton batu bara. Selain mengatasi masalah polusi  bisa juga untuk menghasilkan energi berbahan bahan bakar gratis juga  bisa menghemat devisa\n\n https://environment-indonesia.com/articles/cara-mengubah-sampah-menjadi-energi-listrik/',
  'Menurut UU 18 tahun 2008 tentang Pengelolaan Sampah, TPA merupakan singkatan dari Tempat Pemrosesan Akhir, yaitu tempat untuk memproses dan mengembalikan sampah ke media lingkungan secara aman, baik bagi manusia maupun lingkungan itu sendiri.\n\n Kenyataannya, sebagian besar masyarakat Indonesia masih menganggap TPA sebagai Tempat Pembuangan Akhir.Terkait usaha pengurangan sampah yang berakhir di TPA, pada praktiknya, penanganan sampah dengan konsep 3R yang ada berkembang menjadi konsep segitiga terbalik 5R (Reduce-Reuse-Recyce-Recovery-Disposal) dengan detail sebagai berikut:\n\n 1. Reduce adalah mengurangi produksi sampah sedari awal dengan cara membawa sendiri kantung belanja, menggunakan produk yang bisa digunakan berulang kali, dan lain-lain\n\n 2. Reuse adalah menggunakan kembali material yang bisa dan aman untuk digunakan kembali, salah satunya dengan cara membuat kerajinan tangan atau proses upcycle\n\n 3. Recycle adalah mendaur ulang sampah dengan cara meleburkan, mencacah, melelehkan untuk dibentuk kembali menjadi produk baru yang umumnya mengalami penurunan kualitas\n\n 4. Recovery adalah saat tidak bisa didaur ulang, maka cari jalan untuk menghasilkan energi atau material baru dengan memproses sampah-sampah yang tidak bisa didaur ulang tersebut (residu)\n\n 5.Disposal adalah sampah/produk sisa dari proses recovery yang umumnya berupa abu atau material sisa lainnya dibawa ke TPA untuk diolah dan diproses agar tidak merusak lingkungan.\n\n https://waste4change.com/blog/konsep-prinsip-3r-reduce-reuse-recycle/ '
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.SecondaryColor,
      appBar: AppBar(
        backgroundColor: MyColors.PrimaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              'GOPEDIA',
              style: TextStyle(
                fontSize: 30,
                fontFamily: MyFont.PrimaryFont,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Text(
                  'GOPENEWS',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: MyFont.PrimaryFont,
                    fontWeight: FontWeight.w700,
                        
                  ),
                  ),
              ),
              SizedBox(height: 20),
             CarouselSlider(
              items: [
                GopeNews(
                  image: 'assets/image/tpa-sente-di-klungkung-ditutup-karena-overload.jpeg',
                  berita: 'Peneliti BRIN Jelaskan Dampak Pembakaran Sampah Terbuka, Belum Jadi Political Will',
                  link: 'https://www.detik.com/edu/detikpedia/d-7142141/peneliti-brin-jelaskan-dampak-pembakaran-sampah-terbuka-belum-jadi-political-will',
                  ),
                GopeNews(
                  image: 'assets/image/4-fakta-sampah-malam-tahun-baru-2024-seberat-130-ton-OjQ1XLpSb5.jpg',
                  berita: '4 Fakta Sampah Malam Tahun Baru 2024 Seberat 130 Ton',
                  link: 'https://megapolitan.okezone.com/read/2024/01/01/338/2948101/4-fakta-sampah-malam-tahun-baru-2024-seberat-130-ton',
                ),
                GopeNews(
                  image: 'assets/image/masalah-sampah-plastik-diharap-diangkat-pada-debat-pilpres-2024-6ui1AjvlAA.jpg' ,
                  berita: 'Masalah Sampah Plastik Diharap Diangkat pada Debat Pilpres 2024' ,
                  link: 'https://news.okezone.com/read/2024/01/11/340/2953400/masalah-sampah-plastik-diharap-diangkat-pada-debat-pilpres-2024' ,
                )
              ], 
              options: CarouselOptions(
                height: 275,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.antiAlias
              )
              
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 30),
                child: Container(
                  child: Text(
                    'GOPETICLE',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: MyFont.PrimaryFont,
                      fontWeight: FontWeight.w700,
                    ),
                    ), 
                ),
              ),
              SizedBox(height: 20, ),
              GridView.builder(
                itemCount: GopeticleNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 120 - 25) / (4 *240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: ()=> Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DetailArticle(
                          image: GopeticleImage[index],
                          name: GopeticleNames[index],
                          deskripsi: listdeskripsi[index],
                          )
                        
                        )
                        
                        ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical:30 ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.PrimaryColor.withOpacity(0.1), 
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(GopeticleImage[index],
                              width: 100,
                              height: 100,
                              ),
                              
                            ),
                            SizedBox(height: 10,),
                            Text(
                              GopeticleNames[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyFont.PrimaryFont,
                                color: Colors.black.withOpacity(0.6),
        
                              ),
                              ),                            
                          ],
                        ),
        
                      ),
                    );
                  },
              ),
              Padding(padding: EdgeInsets.only(bottom: 20))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(navIndex: 1),
    );
  }
}

class GopeNews extends StatelessWidget {
  final String image;
  final String berita;
  final String link;



  const GopeNews({
    super.key,
   required this.image, 
   required this.berita,
   required this.link

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrlString(link);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
            color: MyColors.PrimaryColor,
              borderRadius: BorderRadius.circular(20)
            ),
            height: 150,
            width: 300,
            padding:  EdgeInsets.all(0),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              ),
          ),
          SizedBox(height: 10,),

        Container(
          width: 250,
          child: Text(
            berita,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(
              fontSize: 18,
              fontFamily: MyFont.PrimaryFont,
              fontWeight: FontWeight.w500,
            ),
            ),
        )
        ],
      ),
    );
  }
}





