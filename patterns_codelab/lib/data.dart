import 'dart:convert';

// Define la clase Document.
class Document {
  // Campo privado que almacena el JSON decodificado.
  final Map<String, Object?> _json;

  // Constructor que inicializa _json decodificando el JSON de documentJson.
  Document() : _json = jsonDecode(documentJson);

  // Getter que devuelve los metadatos del documento.
  (String, {DateTime modified}) get metadata {
    // Verifica si _json contiene la estructura esperada.
    if (_json
        case {
          'metadata': {
            'title': String title,
            'modified': String localModified,
          }
        }) {
      // Devuelve el título y la fecha modificada como DateTime.
      return (title, modified: DateTime.parse(localModified));
    } else {
      // Lanza una excepción si el formato del JSON no es el esperado.
      throw const FormatException('Unexpected JSON');
    }
  }

  // Método que devuelve una lista de bloques del documento.
  List<Block> getBlocks() {
    // Verifica si _json contiene la estructura esperada.
    if (_json case {'blocks': List blocksJson}) {
      // Convierte cada bloque JSON en un objeto Block.
      return [for (final blockJson in blocksJson) Block.fromJson(blockJson)];
    } else {
      // Lanza una excepción si el formato del JSON no es el esperado.
      throw const FormatException('Unexpected JSON format');
    }
  }
}

// JSON de ejemplo que representa un documento.
const documentJson = '''
{
  "metadata": {
    "title": "My Document",
    "modified": "2023-05-10"
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    {
      "type": "p",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "checkbox",
      "checked": false,
      "text": "Learn Dart 3"
    }
  ]
}
''';

// Clase sellada que representa un bloque en el documento.
sealed class Block {
  Block();

  // Fábrica que crea un Block a partir de un JSON.
  factory Block.fromJson(Map<String, Object?> json) {
    return switch (json) {
      // Crea un HeaderBlock si el JSON tiene el tipo 'h1'.
      {'type': 'h1', 'text': String text} => HeaderBlock(text),
      // Crea un ParagraphBlock si el JSON tiene el tipo 'p'.
      {'type': 'p', 'text': String text} => ParagraphBlock(text),
      // Crea un CheckboxBlock si el JSON tiene el tipo 'checkbox'.
      {'type': 'checkbox', 'text': String text, 'checked': bool checked} =>
        CheckboxBlock(text, checked),
      // Lanza una excepción si el formato del JSON no es el esperado.
      _ => throw const FormatException('Unexpected JSON format'),
    };
  }
}

// Clase que representa un bloque de encabezado.
class HeaderBlock extends Block {
  final String text;

  HeaderBlock(this.text);
}

// Clase que representa un bloque de párrafo.
class ParagraphBlock extends Block {
  final String text;

  ParagraphBlock(this.text);
}

// Clase que representa un bloque de casilla de verificación.
class CheckboxBlock extends Block {
  final String text;
  final bool isChecked;

  CheckboxBlock(this.text, this.isChecked);
}
