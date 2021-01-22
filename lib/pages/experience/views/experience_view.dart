import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';

const kTileHeight = 50.0;

class ExperienceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: FixedTimeline.tileBuilder(
              theme: TimelineThemeData(
                nodePosition: 0,
                color: Color(0xff989898),
                indicatorTheme: IndicatorThemeData(
                  position: 0,
                  size: 40.0,
                ),
                connectorTheme: ConnectorThemeData(
                  thickness: 4,
                ),
              ),
              builder: TimelineTileBuilder.connected(
                connectionDirection: ConnectionDirection.before,
                itemCount: 5,
                contentsBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('ACM CONTESTANT',
                            style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: Color(0xffcacaca),
                                fontWeight: FontWeight.w500)),
                        _InnerTimeline(
                          points: [
                            'message1',
                            'message2',
                          ],
                          subHead: 'Syrian Collegiate Programming Contest ',
                          date: '2018-2019',
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  );
                },
                indicatorBuilder: (_, index) {
                  return DotIndicator(
                    color: Color(0xff66c97f),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 12.0,
                    ),
                  );
                },
                connectorBuilder: (_, index, ___) =>
                    SolidLineConnector(color: Color(0xff66c97f)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InnerTimeline extends StatelessWidget {
  const _InnerTimeline(
      {@required this.points, @required this.subHead, @required this.date});

  final List<String> points;
  final String subHead;
  final String date;

  @override
  Widget build(BuildContext context) {
    bool isEdgeIndex(int index) {
      return index == 0 || index == points.length + 1;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(subHead,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffcacaca))),
              Text(date),
            ],
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineTheme.of(context).copyWith(
              nodePosition: 0,
              connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                    thickness: 1.0,
                  ),
              indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                    size: 10.0,
                    position: 0.5,
                  ),
            ),
            builder: TimelineTileBuilder(
              indicatorBuilder: (_, index) =>
                  !isEdgeIndex(index) ? Indicator.outlined() : null,
              startConnectorBuilder: (_, index) => Connector.transparent(),
              endConnectorBuilder: (_, index) => Connector.transparent(),
              contentsBuilder: (_, index) {
                if (isEdgeIndex(index)) {
                  return null;
                }

                return Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(points[index - 1].toString()),
                );
              },
              itemExtentBuilder: (_, index) => isEdgeIndex(index) ? 10.0 : 30.0,
              nodeItemOverlapBuilder: (_, index) =>
                  isEdgeIndex(index) ? true : null,
              itemCount: points.length + 2,
            ),
          ),
        ],
      ),
    );
  }
}
