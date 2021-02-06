import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mb_website/data/animation/fade_animation.dart';
import 'package:mb_website/data/colors/app_colors.dart';
import 'package:mb_website/data/seeds/seeds.dart';
import 'package:timelines/timelines.dart';

const indicatorColor = Color(0xff989898);

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
                color: indicatorColor,
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
                itemCount: Seeds.experiences.length,
                contentsBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FadeAnimation(
                          duration: Duration(milliseconds: 600),
                          child: Text(Seeds.experiences[index].title,
                              style: GoogleFonts.montserrat(
                                  fontSize: 30,
                                  color: TextColors.head,
                                  fontWeight: FontWeight.w500)),
                        ),
                        _InnerTimeline(
                          points: Seeds.experiences[index].points,
                          subHead: Seeds.experiences[index].company,
                          date: Seeds.experiences[index].date,
                        ),
                      ],
                    ),
                  );
                },
                indicatorBuilder: (_, index) {
                  return DotIndicator(color: indicatorColor
                      // child: Center(child: Text('${index + 1}'))
                      );
                },
                connectorBuilder: (_, index, ___) =>
                    SolidLineConnector(color: indicatorColor),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subHead,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: TextColors.head)),
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
            ), //
            builder: TimelineTileBuilder(
              indicatorBuilder: (_, index) =>
                  !isEdgeIndex(index) ? Indicator.outlined() : null,
              startConnectorBuilder: (_, index) => Connector.transparent(),
              endConnectorBuilder: (_, index) => Connector.transparent(),
              contentsBuilder: (_, index) {
                if (isEdgeIndex(index)) {
                  return null;
                }

                return FadeAnimation(
                  duration: Duration(seconds: 1),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(points[index - 1].toString()),
                  ),
                );
              },
              // itemExtentBuilder: (_, index) => 30.0,
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
