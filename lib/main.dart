import 'package:flutter/material.dart';

void main() {
  runApp(const MiActividadApp());
}

class MiActividadApp extends StatelessWidget {
  const MiActividadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad GridView',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E3A8A)),
      ),
      // Aquí indicamos que la pantalla principal es directamente nuestro catálogo
      home: const PantallaCatalogo(), 
    );
  }
}

class PantallaCatalogo extends StatelessWidget {
  const PantallaCatalogo({super.key});

  @override
  Widget build(BuildContext context) {
    // Aquí está la lista exacta de 14 elementos (7 filas x 2 columnas)
    // Cambia los enlaces por las URLs "Raw" de las imágenes en tu GitHub
    final List<Map<String, dynamic>> catalogo = [
      {'titulo': 'Biblia de Estudio', 'subtitulo': 'Reina Valera 1960', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libreria1.png', 'estrellas': 5},
      {'titulo': 'Diario Devocional', 'subtitulo': 'Mañanas con Dios', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libreria2.png', 'estrellas': 5},
      {'titulo': 'Teología Sistemática', 'subtitulo': 'Wayne Grudem', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libreria3.png', 'estrellas': 4},
      {'titulo': 'El Peregrino', 'subtitulo': 'John Bunyan', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libro1.png', 'estrellas': 5},
      {'titulo': 'Diccionario Bíblico', 'subtitulo': 'Ilustrado', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libros-cristianos-2017.jpg', 'estrellas': 4},
      {'titulo': 'Liderazgo Espiritual', 'subtitulo': 'J. Oswald Sanders', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/images%20(2).jpg', 'estrellas': 5},
      {'titulo': 'Comentario Bíblico', 'subtitulo': 'Matthew Henry', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/libros-cristianos.jpg', 'estrellas': 5},
      {'titulo': 'Vida con Propósito', 'subtitulo': 'Rick Warren', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/images%20(3).jpg', 'estrellas': 4},
      {'titulo': 'Mero Cristianismo', 'subtitulo': 'C.S. Lewis', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/images%20(4).jpg', 'estrellas': 5},
      {'titulo': 'Biblia Apologética', 'subtitulo': 'Edición especial', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/images%20(6).jpg', 'estrellas': 4},
      {'titulo': 'Historia de la Iglesia', 'subtitulo': 'Justo L. González', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/experimentar-la-paz-de-dios-elizabeth-george.jpg', 'estrellas': 5},
      {'titulo': 'Crianza con Gracia', 'subtitulo': 'Para padres', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/b0cea70055e7853adb71dccf55ce42bc.jpg', 'estrellas': 4},
      {'titulo': 'El Dios que Adoramos', 'subtitulo': 'A.W. Tozer', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/5bdc059a96df50b719c7d68e3f022458.jpg', 'estrellas': 5},
      {'titulo': 'Himnario Cristiano', 'subtitulo': 'Letras y partituras', 'imagen': 'https://raw.githubusercontent.com/Jorge-Dominguez-0486/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/517Sc39WYUL._SX355_BO1_204_203_200.jpg', 'estrellas': 4},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Librería Cristiana', 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
        ),
        backgroundColor: const Color(0xFF1E3A8A),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: catalogo.length, // Carga los 14 elementos
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Las 2 columnas que te pidieron
            crossAxisSpacing: 12, // Espacio entre columnas
            mainAxisSpacing: 12, // Espacio entre filas
            childAspectRatio: 0.58, // Ajusta la altura de la tarjeta para que quepan los textos
          ),
          itemBuilder: (context, index) {
            final item = catalogo[index];
            return Card(
              elevation: 4,
              shadowColor: Colors.black26,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // La Imagen desde GitHub
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        item['imagen'],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.image_not_supported, size: 40, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // La parte inferior con las 3 filas requeridas
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Fila 1: Título
                        Text(
                          item['titulo'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF1E3A8A)),
                        ),
                        const SizedBox(height: 4),
                        // Fila 2: Subtítulo
                        Text(
                          item['subtitulo'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        const SizedBox(height: 6),
                        // Fila 3: Estrellitas
                        Row(
                          children: List.generate(5, (starIndex) {
                            return Icon(
                              starIndex < item['estrellas'] ? Icons.star : Icons.star_border,
                              size: 16,
                              color: Colors.amber,
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}