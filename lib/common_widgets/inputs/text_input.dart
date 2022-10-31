import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    required String hintText,
    TextInputType inputType = TextInputType.text,
    bool isObscure = false,
    bool autofocus = false,
  })  : _hintText = hintText,
        _inputType = inputType,
        _isObscure = isObscure,
        _autofocus = autofocus;

  const TextInput.email({
    super.key,
    required String hintText,
    bool autofocus = false,
  })  : _hintText = hintText,
        _inputType = TextInputType.emailAddress,
        _isObscure = false,
        _autofocus = autofocus;

  const TextInput.password({
    super.key,
    required String hintText,
    bool autofocus = false,
  })  : _hintText = hintText,
        _inputType = TextInputType.text,
        _isObscure = true,
        _autofocus = autofocus;

  final String _hintText;
  final TextInputType _inputType;
  final bool _isObscure;
  final bool _autofocus;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final FocusNode _inputFocus = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    _inputFocus.addListener(_onFocusChange);
    super.initState();
  }

  void _onFocusChange() {
    setState(() {
      _hasFocus = _inputFocus.hasFocus;
    });
  }

  @override
  void dispose() {
    super.dispose();

    _inputFocus
      ..removeListener(_onFocusChange)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _inputFocus,
      autocorrect: false,
      autofocus: widget._autofocus,
      keyboardType: widget._inputType,
      obscureText: widget._isObscure,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color.fromRGBO(245, 246, 250, 1),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color.fromRGBO(49, 75, 206, 1),
            width: 2,
          ),
        ),
        hintText: widget._hintText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),
      style: TextStyle(
        fontFamily: 'Inter',
        fontWeight: _hasFocus ? FontWeight.bold : FontWeight.normal,
        fontSize: 16,
        color:
            _hasFocus ? const Color.fromRGBO(49, 75, 206, 1) : Colors.black87,
      ),
    );
  }
}
