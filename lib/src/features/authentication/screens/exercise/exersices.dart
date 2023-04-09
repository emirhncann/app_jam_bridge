import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Tamamlanan Egzersizler",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          _divider(),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              children: [
                _floatingbuttontheme(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Hesap Makinesi Yapımı',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          _divider(),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              children: [
                _floatingbuttontheme(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'TO-DO List Yapımı',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          _divider(),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              children: [
                _floatingbuttontheme(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ' Barkod Okuyucu',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          _divider(),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              children: [
                _floatingbuttontheme(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Hava Durumu Uygulaması',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          _divider(),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              children: [
                _floatingbuttontheme(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Rezervasyon Uygulaması',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          _divider(),
        ],
      ),
    );
  }

  AppBar _exerciseappbar(BuildContext context) {
    return AppBar(
      title: Text(
        'EGZERSİZLER',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.chevron_left_outlined,
          color: Color.fromARGB(255, 57, 55, 55),
        ),
      ),
    );
  }

  Divider _divider() {
    return const Divider(
      thickness: 3,
      color: Color.fromRGBO(88, 37, 230, 1),
      indent: 15,
      endIndent: 15,
    );
  }

  ElevatedButton _floatingbuttontheme() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(250)),
        backgroundColor: const Color.fromARGB(255, 29, 168, 33),
      ),
      child: const Text(""),
    );
  }
}
