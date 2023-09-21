class Course {
  String name;
  String description;
  String level;
  int registeredStudents;
  String category;
  String courseImage;
  List<Feature> feature;
  List<String> syllabus;

  Course({
    required this.name,
    required this.description,
    required this.level,
    required this.registeredStudents,
    required this.category,
    required this.courseImage,
    required this.feature,
    required this.syllabus,
  });
}

class Feature{
  String name;
  String description;

  Feature({
    required this.name,
    required this.description,
  });

}

var courseList = [
  Course(
      name: "Belajar Analisis Data dengan Python",
      description: "Data telah dianggap sebagai sumber daya penting oleh berbagai industri, seperti e-commerce, manufacturing, healthcare, finance, dll. Analisis data merupakan proses pemanfaatan data menjadi insight (wawasan) yang selanjutnya akan digunakan untuk menjawab berbagai tantangan bisnis mulai dari penyelesaian masalah hingga pengambilan keputusan. Kelas ini menjadi jawaban bagi Anda yang ingin menguasai proses analisis data menggunakan bahasa pemrograman Python.",
      level: "Pemula",
      registeredStudents: 1000,
      category: "Data",
      courseImage: "https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/academy/dos:belajar_analisis_data_dengan_python_logo_271222164447.jpg",
      feature:[
        Feature(name: "Sertifikat", description: "Dapatkan sertifikat standar industri setelah menyelesaikan kelas ini."),
        Feature(name: "Code Review", description: "Kode yang Anda kerjakan akan direview secara komprehensif oleh reviewer."),
        Feature(name: "Forum Diskusi", description: "Diskusikan materi belajar dengan peserta lainnya."),
        Feature(name: "Modul Tutorial", description: "Materi bacaan elektronik disajikan dengan bahasa yang mudah dipahami."),
        Feature(name: "Submission", description: "Uji kemampuan teknis Anda dengan mengerjakan tugas Submission."),
        Feature(name: "Kuis", description: "Kuis pilihan ganda membantu Anda memahami materi yang dipelajari."),
        Feature(name: "Ujian", description: "Validasi pengetahuan Anda dengan mengerjakan soal-soal Ujian."),
      ],
      syllabus:[
        "Persiapan Belajar",
        "Dasar-Dasar Analisis Data",
        "Penerapan Dasar-Dasar Descriptive Statistics",
        "Data Wrangling"
      ]
  ),
  Course(
      name: "Belajar Tools Front-End Web Intermediate",
      description: "Perkembangan teknologi makin pesat, begitu pula dengan aplikasi berbasis website. Banyak tools yang bisa diterapkan untuk mempermudah dan mempercepat pekerjaan developer, terutama dalam pengembangan aplikasi web. Tools tersebut antara lain Sass untuk CSS preprocessor, Bootstrap untuk CSS framework, Lit untuk Web Component, Axios untuk HTTP client, dan Firebase untuk Platform as a Service (PaaS). Dengan mempelajari tools tersebut, developer akan semakin andal dalam membuat aplikasi web berkualitas.",
      level: "Mahir",
      registeredStudents: 1000,
      category: "Data",
      courseImage: "https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/academy/dos:belajar_tools_front_end_web_intermediate_logo_070223112714.png",
      feature:[
        Feature(name: "Sertifikat", description: "Dapatkan sertifikat standar industri setelah menyelesaikan kelas ini."),
        Feature(name: "Code Review", description: "Kode yang Anda kerjakan akan direview secara komprehensif oleh reviewer."),
        Feature(name: "Forum Diskusi", description: "Diskusikan materi belajar dengan peserta lainnya."),
        Feature(name: "Modul Tutorial", description: "Materi bacaan elektronik disajikan dengan bahasa yang mudah dipahami."),
        Feature(name: "Submission", description: "Uji kemampuan teknis Anda dengan mengerjakan tugas Submission."),
        Feature(name: "Kuis", description: "Kuis pilihan ganda membantu Anda memahami materi yang dipelajari."),
        Feature(name: "Ujian", description: "Validasi pengetahuan Anda dengan mengerjakan soal-soal Ujian."),
      ],
      syllabus:[
        "Persiapan Belajar",
        "CSS Preprocessor dengan Sass",
        "CSS Framework dengan Bootstrap",
        "Web Component dengan Lit",
        "Penerapan Shadow DOM dan Localization di Lit"
      ]
  ),
  Course(
      name: "Belajar Dasar Manajemen Proyek",
      description: "Manajemen Proyek merupakan pengetahuan, keterampilan, dan teknik yang diterapkan untuk kegiatan dalam memenuhi kebutuhan proyek. Dengan mempelajari dan memahami manajemen proyek, mulai dari menginisiasi proyek, membuat rencana proyek, hingga menutup sebuah proyek, Anda akan memiliki sebuah keahlian khusus untuk menjadi seorang manajer proyek profesional baik di sektor industri maupun di sektor lainnya. Anda akan memperoleh hal-hal yang bermanfaat, sebagai berikut.",
      level: "Mahir",
      registeredStudents: 1000,
      category: "Dasar",
      courseImage: "https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/academy/dos:belajar_dasar_manajemen_proyek_logo_170223134601.png",
      feature:[
        Feature(name: "Sertifikat", description: "Dapatkan sertifikat standar industri setelah menyelesaikan kelas ini."),
        Feature(name: "Code Review", description: "Kode yang Anda kerjakan akan direview secara komprehensif oleh reviewer."),
        Feature(name: "Forum Diskusi", description: "Diskusikan materi belajar dengan peserta lainnya."),
        Feature(name: "Modul Tutorial", description: "Materi bacaan elektronik disajikan dengan bahasa yang mudah dipahami."),
        Feature(name: "Submission", description: "Uji kemampuan teknis Anda dengan mengerjakan tugas Submission."),
        Feature(name: "Kuis", description: "Kuis pilihan ganda membantu Anda memahami materi yang dipelajari."),
        Feature(name: "Ujian", description: "Validasi pengetahuan Anda dengan mengerjakan soal-soal Ujian."),
      ],
      syllabus:[
        "Persiapan Belajar",
        "Pengenalan Manajemen Proyek",
        "Siklus dan Metodologi Manajemen Proyek",
        "Struktur dan Budaya Organisasi",
        "Mengejar Karier Manajemen Proyek"
      ]
  ),
];