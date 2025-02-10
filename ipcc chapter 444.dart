import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> events = [
      '4.1 Centrality of Water Security in Climate Change and Climate Resilient Development',
      '4.2 Observed Changes in the Hydrological Cycle Due to Climate Change',
      '4.3 Observed Sectoral Impacts of Current Hydrological Changes',
      '4.4 Projected Changes in the Hydrological Cycle Due to Climate Change',
      '4.5 Projected Sectoral Water-Related Risks',
      '4.6 Key Risks and Adaptation Responses in Various Water Use Sectors',
      '4.7 Benefits and Effectiveness of Water-Related Adaptations, Their Limits and Trade-Offs',
      '4.8 Enabling Principles for Achieving Water Security, Sustainable and Climate Resilient Development Through Systems Transformations'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit 4'),
      ),
      body: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0.025,
          color: Colors.lightBlueAccent,
          indicatorTheme: const IndicatorThemeData(
            position: 0.5,
            size: 20.0,
          ),
          connectorTheme: const ConnectorThemeData(
            thickness: 5.0,
          ),
        ),
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.basic,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.lightBlueAccent,
              ),
              child: Text(
                //textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                events[index],
              ),
            ),
          ),
          endConnectorStyle: ConnectorStyle.dashedLine,
          itemCount: events.length,
        ),
      ),
    );
  }
}
