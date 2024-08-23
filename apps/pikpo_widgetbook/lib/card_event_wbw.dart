import 'package:flutter/material.dart';
import 'package:pikpo_ui_kit/card_event_widget.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Card Event UI Kit', type: CardEventWidget)
Widget cardEvent(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          CardEventWidget(
            onTap: () {},
            eventImageUrl:
                'https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            eventName: context.knobs.string(
              label: 'Event Name',
              initialValue: 'Privater Training Sessions',
            ),
            roleName: 'Coach',
            eventType: context.knobs.list(
              label: 'Event Type',
              initialOption: 'In-Person',
              options: ['In-Person', 'Call'],
            ),
            duration: context.knobs.int.input(
              label: 'Duration',
              initialValue: 1800,
            ),
            description: context.knobs.string(
              label: 'Description',
              initialValue: 'This is a private training session',
            ),
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'Card Event In Person', type: CardEventWidget)
Widget cardEventInPerson(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          CardEventWidget(
            onTap: () {},
            eventImageUrl:
                'https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            eventName: context.knobs.string(
              label: 'Event Name',
              initialValue: 'Privater Training Sessions',
            ),
            roleName: 'Coach',
            eventType: 'In-Person',
            duration: context.knobs.int.input(
              label: 'Duration',
              initialValue: 1800,
            ),
            description: context.knobs.string(
              label: 'Description',
              initialValue: 'This is a private training session',
            ),
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'Card Event Call', type: CardEventWidget)
Widget cardEventCall(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          CardEventWidget(
            onTap: () {},
            eventImageUrl:
                'https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            eventName: context.knobs.string(
              label: 'Event Name',
              initialValue: 'Privater Training Sessions',
            ),
            roleName: 'Coach',
            eventType: 'Call',
            duration: context.knobs.int.input(
              label: 'Duration',
              initialValue: 1800,
            ),
            description: context.knobs.string(
              label: 'Description',
              initialValue: 'This is a private training session',
            ),
          ),
        ],
      ),
    ),
  );
}
