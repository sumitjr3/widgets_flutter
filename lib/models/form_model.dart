class FormFieldModel {
  final String title;
  final String keyboardType;
  final String? hintText;
  final List<String>? options;

  FormFieldModel({
    required this.title,
    required this.keyboardType,
    this.hintText,
    this.options,
  });
}
