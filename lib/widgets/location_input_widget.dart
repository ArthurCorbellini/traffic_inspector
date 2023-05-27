import 'package:flutter/material.dart';

class LocationInputWidget extends StatefulWidget {
  const LocationInputWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LocationInputWidgetState();
  }
}

class _LocationInputWidgetState extends State<LocationInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            ),
          ),
          child: Text(
            'Nenhuma localização selecionada.',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.location_on),
              label: const Text('Localização Atual'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.map),
              label: const Text('Selecionar no Mapa'),
            ),
          ],
        )
      ],
    );
  }
}
