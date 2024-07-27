part of '../label_screen.dart';

class _LabelColumn extends StatelessWidget {
  const _LabelColumn({super.key, required this.bloc});

  final NewsLabelsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ran Loock',style: ZTextStyles.tabHeadline,),
          NewsLabelsDateSelector((dateTime) {
            final timeLabel = 'Current time and date:\n $dateTime';
            return Text(timeLabel,style: ZTextStyles.cardHeadline,);
          }),
          NewsLabelsNewsSelector((news) => Wrap(children: [Text(news,style: ZTextStyles.cardHeadline,)])),
          ZElevatedButton(
            onPressed: () => bloc.add(const NewsLabelsGoToFeed()),
            label: 'Display feed',
          ),
        ],
      ),
    );
  }
}
