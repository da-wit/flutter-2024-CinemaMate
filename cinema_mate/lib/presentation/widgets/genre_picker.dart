import 'package:cinema_mate/presentation/widgets/field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MultiSelect extends StatefulWidget {
  const MultiSelect({super.key, required this.genres});
  final List<String> genres;

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> _selectedGenres = [];
  String genreVal = '';

  void _genreChange(String genreValue, bool? isSelected) {
    setState(
      () {
        if (isSelected!) {
          _selectedGenres.add(genreValue);
        } else {
          _selectedGenres.remove(genreValue);
        }
        genreVal = _selectedGenres.join(',');
      },
    );
  }

  void _cancle() {
    Navigator.pop(context);
  }

  void _submitGenre() {
    Navigator.pop(
      context,
      _selectedGenres,
    );
  }

  // void _reset() {
  //   setState(() {
  //     _selectedGenres = [];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('selected Genres'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.genres
              .map(
                (genre) => CheckboxListTile(
                    value: _selectedGenres.contains(genre),
                    title: Text(genre),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) {
                      _genreChange(genre, isChecked);
                    }),
              )
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancle,
          child: const Text("Cancle"),
        ),
        ElevatedButton(
          onPressed: _submitGenre,
          child: const Text('Submit'),
        )
      ],
    );
  }
}

class GenrePicker extends StatefulWidget {
  const GenrePicker({super.key});

  @override
  State<GenrePicker> createState() => _GenrePickerState();
}

class _GenrePickerState extends State<GenrePicker> {
  List<String> _selectedGenres = [];
  String genreVal = '';

  void _showMultiSelect() async {
    final List<String> genres = [
      "Action",
      "Adventure",
      "Comedy",
      "Crime",
      "Fantasy",
      "Historical",
      "Horror",
      "Romance",
      "Science Fiction",
      "Thriller",
      "Animation",
    ];

    final List<String>? result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(genres: genres);
      },
    );

    if (result != null) {
      setState(() {
        _selectedGenres = result;
        genreVal = _selectedGenres.join(',');
        // print(genreVal);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: newColor.grey)),
            margin: const EdgeInsets.only(right: 10, left: 20),
            padding: const EdgeInsets.all(2),

            height: 100,
            // color: Colors.black,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 5,
                children: _selectedGenres.map((genre) {
                  return Chip(
                    label: Text(genre),
                    labelStyle: TextStyle(color: newColor.bg),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        TextButton.icon(
          label: const Text("Genre"),
          onPressed: _showMultiSelect,
          icon: const Icon(Icons.local_movies),
        ),
      ],
    );
  }
}
