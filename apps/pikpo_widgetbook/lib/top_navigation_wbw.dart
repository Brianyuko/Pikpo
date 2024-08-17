import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:pikpo_ui_kit/top_navigation_widget.dart';

@widgetbook.UseCase(name: 'UI Kit', type: TopNavigationWidget)
Widget uiKitUseCase(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: TopNavigationWidget(
        imageUrl:
            'https://images.unsplash.com/photo-1589860518300-9eac95f784d9?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        name: context.knobs.string(label: 'Name', initialValue: 'Jeff Wang'),
        username: context.knobs
            .string(label: 'Username', initialValue: '@sarah.sports'),
        jobTitle: context.knobs
            .string(label: 'Job Title', initialValue: 'Personal Trainer'),
      ),
    ),
  );
}

@widgetbook.UseCase(
    name: 'Invalid URL Profile Image', type: TopNavigationWidget)
Widget invalidURLProfileImageUseCase(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: TopNavigationWidget(
        imageUrl: '',
        name: context.knobs.string(label: 'Name', initialValue: 'Jeff Wang'),
        username: context.knobs
            .string(label: 'Username', initialValue: '@sarah.sports'),
        jobTitle: context.knobs
            .string(label: 'Job Title', initialValue: 'Personal Trainer'),
      ),
    ),
  );
}
