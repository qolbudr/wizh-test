import 'dart:developer';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/themes/color_theme.dart';
import 'package:wizh_test/core/themes/text_theme.dart';
import 'package:wizh_test/core/utils/formatter.dart';

enum WInputState {
  normal(
    background: TColors.baseWhite,
    border: TColors.neutral20,
    helperColor: TColors.redMain,
    valueColor: TColors.neutral70,
    labelColor: TColors.neutral70,
  ),
  active(
    background: TColors.baseWhite,
    border: TColors.primaryColor,
    helperColor: TColors.redMain,
    valueColor: TColors.neutral70,
    labelColor: TColors.neutral70,
  ),
  disabled(
    background: TColors.neutral20,
    border: TColors.neutral20,
    helperColor: TColors.redMain,
    valueColor: TColors.neutral70,
    labelColor: TColors.neutral30,
  ),
  error(
    background: TColors.neutral20,
    border: TColors.redMain,
    helperColor: TColors.redMain,
    valueColor: TColors.neutral70,
    labelColor: TColors.neutral70,
  );

  const WInputState({required this.border, required this.background, required this.helperColor, required this.valueColor, required this.labelColor});

  final Color border, background, helperColor, valueColor, labelColor;
}

enum WInputType {
  text,
  phone,
  number,
  currency,
  precentage,
  decimal;
}

class WInput extends StatefulWidget {
  const WInput({
    super.key,
    this.controller,
    this.focusNode,
    this.readOnly = false,
    this.inputState = WInputState.normal,
    this.label,
    this.hintText,
    this.helperText,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.onChange,
    this.onTap,
    this.initialValue,
    this.type = WInputType.text,
    this.withShowHide = false,
    this.textAlign = TextAlign.start,
    this.max,
    this.min,
    this.maxLines,
    this.keepAlive = false,
    this.onSubmit
  });

  final WInputState inputState;
  final bool readOnly;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? label, hintText, helperText;
  final String? Function(String)? validator;
  final bool obscureText;
  final Widget? suffixIcon, prefixIcon;
  final void Function(String)? onChange;
  final void Function()? onTap, onSubmit;
  final String? initialValue;
  final WInputType type;
  final bool withShowHide;
  final TextAlign textAlign;
  final num? min, max;
  final int? maxLines;
  final bool keepAlive;

  @override
  State<WInput> createState() => _WInputState();
}

class _WInputState extends State<WInput> with AutomaticKeepAliveClientMixin {
  late WInputState _state;
  late FocusNode _focus;
  late TextEditingController _controller;
  late String? _helperText;
  late AutovalidateMode _autovalidateMode;
  late String _debounceTag;
  late bool _obscureText;
  final List<TextInputFormatter> _formatter = [];

  @override
  void initState() {
    _autovalidateMode = AutovalidateMode.disabled;
    _controller = widget.controller ?? TextEditingController();
    _state = widget.inputState;
    _focus = widget.focusNode ?? FocusNode();
    _helperText = widget.helperText;
    _obscureText = widget.obscureText;
    _debounceTag = 'input-debounce-${DateTime.now().millisecondsSinceEpoch}';
    if (widget.initialValue != null) _controller.text = widget.initialValue!;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _onState();
    });

    List<TextInputFormatter> formatter = [];

    if (widget.type == WInputType.phone) {
      formatter = [
        FilteringTextInputFormatter.allow(Const.numberRegex),
      ];
    }

    if (widget.type == WInputType.number) {
      formatter = [
        FilteringTextInputFormatter.allow(Const.numberRegex),
        InputNumberFormatter(min: widget.min, max: widget.max),
      ];
    }

    if (widget.type == WInputType.currency) {
      formatter = [
        FilteringTextInputFormatter.allow(Const.numberRegex),
        CurrencyInputFormatter(min: widget.min ?? 0, max: widget.max),
      ];
    }

    if (widget.type == WInputType.precentage) {
      formatter = [
        FilteringTextInputFormatter.allow(Const.decimalRegex),
        PercentageInputFormatter(decimal: 2, min: widget.min ?? 0, max: widget.max ?? 100),
      ];
    }

    _formatter.addAll(formatter);

    super.initState();
  }

  void _onChange() {
    _autovalidateMode = AutovalidateMode.always;
    EasyDebounce.debounce(_debounceTag, const Duration(milliseconds: 500), () {
      if (widget.onChange != null) {
        widget.onChange!(_controller.text);
      }
    });
    _onState();
  }

  void _onTap() {
    if (widget.onTap != null) widget.onTap!();
    _onState();
  }

  void _onState() {
    if (widget.inputState != WInputState.disabled && !widget.readOnly) {
      if (_focus.hasFocus) {
        _state = WInputState.active;
      } else {
        if (widget.inputState == WInputState.error) {
          _state = WInputState.error;
        } else {
          if (_controller.text.isEmpty) {
            _state = WInputState.normal;
          } else {
            _state = WInputState.normal;
          }
        }
      }
    }

    if (mounted) setState(() {});
  }

  void _toggleShowHide() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void dispose() {
    log('TextEditingController was Disposed');
    super.dispose();
    EasyDebounce.cancel(_debounceTag);
    _focus.dispose();
    if(!widget.keepAlive) _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return FormField(
      autovalidateMode: _autovalidateMode,
      validator: (_) => widget.validator != null ? widget.validator!(_controller.text) : null,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.label != null) ...[
              Text(widget.label!, style: TText.bodySSemiBold(color: state.hasError ? WInputState.error.labelColor : _state.labelColor)),
              SizedBox(height: Const.siblingMargin(x: 1.5)),
            ],
            TextField(
              maxLines: widget.maxLines ?? 1,
              textAlign: widget.textAlign,
              inputFormatters: _formatter,
              obscureText: _obscureText,
              controller: _controller,
              style: TText.bodySRegular(color: _state.valueColor),
              onTap: () => _onTap(),
              onChanged: (value) => _onChange(),
              onSubmitted: (value) => widget.onSubmit?.call(),
              focusNode: _focus,
              readOnly: widget.readOnly,
              decoration: InputDecoration(
                prefixIcon: widget.type == WInputType.currency
                    ? Container(
                        width: 50,
                        margin: const EdgeInsets.only(top: 1, bottom: 1, left: 2, right: 8),
                        decoration: BoxDecoration(
                          color: TColors.neutral10,
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(10),
                          ),
                          border: Border.all(color: TColors.neutral10, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "Rp",
                            style: TText.bodyXSSemiBold(),
                          ),
                        ),
                      )
                    : widget.prefixIcon,
                suffixIcon: widget.withShowHide
                    ? IconButton(
                        icon: Icon(!_obscureText ? IconsaxPlusLinear.eye_slash : IconsaxPlusLinear.eye, size: 16, semanticLabel: "show_hide_password"),
                        onPressed: () => _toggleShowHide(),
                      )
                    : widget.suffixIcon,
                hintText: widget.hintText,
                hintStyle: TText.bodySRegular(color: TColors.neutral40),
                contentPadding: EdgeInsets.symmetric(
                  vertical: Const.siblingMargin(x: 3),
                  horizontal: Const.siblingMargin(x: 4),
                ),
                filled: true,
                hoverColor: _state.background,
                fillColor: _state.background,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: state.hasError ? WInputState.error.border : _state.border,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: state.hasError ? WInputState.error.border : _state.border,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: state.hasError ? WInputState.error.border : _state.border,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: state.hasError ? WInputState.error.border : _state.border,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: state.hasError ? WInputState.error.border : _state.border,
                  ),
                ),
              ),
            ),
            if (_helperText != null || state.errorText != null) ...[
              SizedBox(height: Const.siblingMargin(x: 1.5)),
              Text(state.errorText ?? _helperText!, style: TText.bodyXSRegular(color: state.hasError ? WInputState.error.helperColor : _state.helperColor)),
            ],
          ],
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
