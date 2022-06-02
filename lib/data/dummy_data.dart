import '../model/recipe.dart';

var listOfRecipe = [
  Recipe(
    id: '0001',
    name: 'Wedang Kopi Jahe',
    rating: '4.7',
    img: 'images/wedang_kopi_jahe.jpg',
    time: '25 Menit',
    category: 'Minuman',
    portion: '4 Porsi',
    description:
        'Disaat cuaca tidak menentu paling enak minum Wedang Kopi dengan campuran rempah-rempah yang bermanfaat untuk menjaga stamina tubuh agar selalu sehat.',
    ingredient: [
      '800ml air',
      '250g jahe(memarkan)',
      '2 lembar daun pandan(ikat simpul)',
      '250g gula merah(sisir halus',
      '2sdt kopi instant'
    ],
    stages: [
      'Dalam panci, masukkan air, jahe, dan daun pandan, masak dengan api kecil hingga harum.',
      'Masukkan gula merah, masak hingga gula larut. Angkat, saring.',
      'Siapkan 4 gelas saji (dgn volume 300 ml). Berikan ½ sdt kopi instan di setiap gelas. Tambahkan dengan larutan jahe, aduk rata. Sajikan segera.'
    ],
  ),
  Recipe(
    id: '0002',
    name: 'Banana Milkshake',
    rating: '5.0',
    img: 'images/banana_milkshake.jpg',
    time: '15 Menit',
    category: 'Minuman',
    portion: '4 Porsi',
    description:
        'Banana Milkshake, minuman dingin dengan pisang dan es krim vanilla. Manisnya bikin nagih! Apalagi untuk Endeusiast penikmat olahan pisang, wajib banget coba minuman yang satu ini',
    ingredient: [
      '500g daging buah pisang',
      '150g es krim vanilla',
      '100ml susu cair',
      '2½sdt ekstrak vanilla',
      'whipping cream, kocok kaku'
    ],
    stages: [
      'Potong-potong daging buah pisang ke dalam bentuk dadu 1,5 cm. Simpan dalam freezer hingga beku.',
      'Masukkan pisang, es krim vanilla, susu cair, dan ekstrak vanilla ke dalam blender. Proses hingga halus.',
      'Tuang ke dalam gelas saji. Semprotkan whipping cream di atasnya. Sajikan segera.'
    ],
  ),
  Recipe(
    id: '0003',
    name: ' Cakwe Isi Ayam Ala Restoran Dimsum ',
    rating: '3.9',
    img: 'images/cakwe_isi_ayam.jpg',
    time: '30 Menit',
    category: 'Goreng',
    portion: '4 Porsi',
    description:
        'Cakwe digoreng dengan adonan ayam, wortel, dan ebi gurih di atasnya. Harum dengan kucai dan seledri dalam campuran ayam. Lezat dengan saus cocolan favorit seperti mayones atau sambal pedas manis.',
    ingredient: [
      '6 buah cakwe goreng, potong 8 cm',
      'minyak goreng',
      '150g daging ayam giling',
      '2sdm tepung tapioka',
      '1sdm ebi, sangrai, haluskan',
      '1sdm kucai, iris halus',
      '½sdm seledri, iris halus',
      '1sdt kaldu ayam bubuk',
      '½sdt cabai bubuk',
      '½sdt gula pasir',
      'mayones',
      'saus sambal pedas manis siap pakai',
    ],
    stages: [
      'Isi: Masukkan semua bahan dalam wadah, aduk hingga rata.',
      'Ambil 2 sdm isi, oleskan di atas cakwe. Lakukan hingga semua bahan habis.',
      'Goreng cakwe dalam minyak banyak panas di atas api sedang hingga matang. Angkat, tiriskan.',
      'Sajikan hangat dengan pelengkap.'
    ],
  ),
  Recipe(
    id: '0004',
    name: ' Telur Gulung Jepang (Dashimaki Tamago)',
    rating: '4.8',
    img: 'images/telur_gulung_jepang.jpg',
    time: '20 Menit',
    category: 'Tumis',
    portion: '4 Porsi',
    description:
        'Tamago merupakan hidangan telur khas Jepang yang dibuat dengan cara menggulung setiap lapisan telur hingga memiliki ketebalan tertentu. Cita rasanya pun sedikit berbeda dengan hidangan telur pada umumnya yang memiliki rasa gurih, Tamago memiliki cita rasa yang cenderung manis dengan tekstur telur yang sangat lembut.',
    ingredient: [
      '5 butir telur, kocok lepas',
      '1sdm mirin',
      '2sdt shoyu',
      '1sdt gula pasir',
      '1sdm mentega'
    ],
    stages: [
      'Campur telur, mirin, soy sauce, garam, dan gula pasir. Aduk rata.',
      'Panaskan sedikit mentega dalam wajan persegi anti lengket. Buat dadar tipis dari adonan telur, masak dengan api kecil hingga setengah matang.',
      'Lipat dadar selebar 4 cm, kemudian gulung hingga lapisan telur habis.',
      'Letakkan gulungan telur di bagian bawah wajan, tambahkan kembali adonan telur dadar tipis dan masak hingga setengah matang.',
      'Gulung kembali adonan telur sebelumnya dengan dadar tipis. Lakukan hingga adonan habis dan gulungan telur menebal. Angkat. Potong-potong sesuai selera, sajikan segera.'
    ],
  ),
  Recipe(
    id: '0005',
    name: 'Teh Bunga Telang Limau',
    rating: '4.5',
    img: 'images/teh_bunga_telang.jpg',
    time: '15 Menit',
    category: 'Minuman',
    portion: '2 Porsi',
    description:
        'Menikmati secangkir Teh Bunga Telang Jeruk Nipis di siang hari memang sangat menyegarkan. Tampilannya yang cantik juga menjadikan menu ini cocok dihidangkan kala open house!',
    ingredient: [
      '2sdm bunga telang kering',
      '400 ml air, didihkan',
      '6sdm sirup gula',
      'es batu, secukupnya',
      '3sdt air jeruk nipis'
    ],
    stages: [
      'Dalam sebuah panci, masukkan bunga telang dan air, masak di atas api sedang hingga mendidih.',
      'Matikan api, diamkan selama 10 menit. Saring, biarkan dingin.',
      'Penyajian: Siapkan 2 buah gelas saji (dgn volume 500 ml), tuangkan 3 sdm sirup gula di setiap gelas.',
      'Tambahkan es batu hingga gelas penuh. Tuang larutan teh bunga telang ke dalam gelas dan tambahkan 1½ sdt air jeruk nipis ke dalam setiap gelas. Sajikan segera.'
    ],
  ),
  Recipe(
    id: '0006',
    name: 'Jus Mentimun Ringankan Asam Lambung',
    rating: '4.0',
    img: 'images/jus_mentimun.jpg',
    time: '5 Menit',
    category: 'Minuman',
    portion: '2 Porsi',
    description:
        'Jus mentimun yang segar dengan paduan apel hijau dan seledri, dinikmati dingin sebelum mengkonsumsi makanan berat dapat meringankan asam lambung.',
    ingredient: [
      '2 buah mentimun, potong potong',
      '1 batang seledri, cuci bersih',
      '1 buah apel hijau, potong-potong',
      '2sdm gula pasir',
      '200g es serut'
    ],
    stages: [
      'Masukkan semua bahan ke dalam blender. Blender halus.',
      'Sajikan segera.',
    ],
  ),
  Recipe(
    id: '0007',
    name: 'Wedang Kayumanis',
    rating: '5.0',
    img: 'images/wedang_kayumanis.jpg',
    time: '20 Menit',
    category: 'Minuman',
    portion: '4 Porsi',
    description:
        'Wedang Kayumanis Teh, minuman hangat yang enak diseruput pada saat musim penghujan. Apalagi dengan tambahan madu yang akan menambah rasa manis dan juga sehat.',
    ingredient: [
      '50g jahe, bakar, kupas, memarkan',
      '1liter air',
      '8cm kayumanis',
      '4 kantong teh hitam',
      '8sdm madu'
    ],
    stages: [
      'Bakar jahe di atas api kompor hingga harum. Kupas kulit jahe hingga bersih dan memarkan.',
      'Masukkan jahe ke dalam sebuah panci, tambahkan air dan kayumanis. Masak di atas api besar hingga mendidih. Kecilkan api, teruskan merebus hingga cairan sedikit menyusut.',
      'Tambahkan teh hitam, masak selama 2 - 3 menit hingga teh terekstrak. Matikan api.',
      'Tambahkan madu, aduk rata. Angkat, sajikan segera.'
    ],
  ),
  Recipe(
    id: '0008',
    name: 'Kentang Goreng Bolognaise',
    rating: '4.7',
    img: 'images/kentang_goreng.jpg',
    time: '45 Menit',
    category: 'Goreng',
    portion: '4 Porsi',
    description:
        'Kentang goreng lembut renyah dengan siraman saus bolognaise gurih lezat. Sangat cocok untuk camilan anti repot yang pasti enak.',
    ingredient: [
      '500g kentang siap goreng',
      'minyak(untuk menggoreng)',
      '2sdm minyak zaitun',
      '300g daging sapi cincang',
      '100g bawang bombai, cincang halus',
      '3 siung bawang putih, cincang halus',
      '50g seledri, ambil batangnya, iris halus',
      '50g wortel, cincang halus',
      '500g saus tomat pomodori/cincang siap pakai',
      '2sdm pasta tomat',
      '2sdm chili flakes',
      '1sdt garam',
      '50g keju parmesan bubuk',
      '1 sdt merica hitam, gerus kasar',
      '1 sdt oregano',
      '200 ml kaldu sapi',
      'peterseli, cincang'
    ],
    stages: [
      'Saus bolognaise: Panaskan minyak dalam wajan, tumis daging hingga berubah warna.',
      'Masukkan bawang bombai dan bawang putih, tumis hingga harum. Tambahkan seledri dan wortel, masak hingga agak layu.',
      'Masukkan saus tomat pomodori, pasta tomat, keju parmesan, chili flakes, garam, merica, dan oregano. Aduk rata. Tuang kaldu, aduk rata. Masak dengan api kecil hingga saus sedikit mengental. Angkat. Sisihkan, jaga tetap hangat.',
      'Goreng kentang hingga berubah warna dan renyah. Angkat, tiriskan.',
      'Tata kentang di atas piring saji, siram dengan saus. Sajikan segera.'
    ],
  ),
  Recipe(
    id: '0009',
    name: 'Strawberry Lassi',
    rating: '4.5',
    img: 'images/strawberry_lassi.jpg',
    time: '15 Menit',
    category: 'Minuman',
    portion: '3 Porsi',
    description:
        'Strawberry Lassi, minuman Khas India dengan perpaduan yoghurt dan strawberry. Pasti akan terasa lebih menyegarkan!',
    ingredient: [
      '225g strawberry',
      '250g greek yoghurt',
      '250ml susu cair',
      '¼sdt bubuk kapulaga hijau',
      '1sdm madu'
    ],
    stages: [
      'Cincang kasar strawberry.',
      'Masukkan semua bahan ke dalam blender, proses hingga halus.',
      'Simpan dalam kulkas hingga dingin, sajikan.'
    ],
  ),
  Recipe(
    id: '0010',
    name: 'Es Kopi Coklat ala Coffeeshop',
    rating: '4.7',
    img: 'images/es_kopi_coklat.jpg',
    time: '35 Menit',
    category: 'Minuman',
    portion: '2 Porsi',
    description:
        'Tetap bisa kok ngopi cantik di rumah ala coffee shop. Perpaduan es kopi susu dengan cokelat manis legit, pas untuk teman kerja di rumah.',
    ingredient: [
      '3sdm kopi bubuk',
      '200ml air mendidih',
      '70ml sirup gula',
      '300g es batu',
      '400ml susu cair',
      '50ml saus cokelat siap pakai'
    ],
    stages: [
      'Tempatkan coffee dripper di atas cangkir kosong. Beri kertas penyaring kopi di atasnya.',
      'Basahi kertas penyaring kopi dengan air panas. Buang air yang turun ke dalam cangkir.',
      'Masukkan kopi ke dalam kertas penyaring, tuang air panas sedikit-sedikit. Biarkan kopi turun perlahan. Sisihkan.',
      'Siapkan 2 buah gelas saji, corat-coret saus cokelat di sisi gelas.',
      'Tuang sirup gula dan kopi ke dalam gelas. Beri es batu. Tambahkan susu cair. Sajikan segera.'
    ],
  ),
];
