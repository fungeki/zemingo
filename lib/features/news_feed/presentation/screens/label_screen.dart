import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zemingo_flutter/core/styles.dart';
import 'package:zemingo_flutter/di.dart';
import 'package:zemingo_flutter/features/news_feed/domain/usercase/news_feed_usecases.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/screens/news_feed_screen.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/feed/news_feed_cubit.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_bloc.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_event.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_state.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_selector.dart';
import 'package:zemingo_flutter/general_widgets/buttons/z_elevated_button.dart';

part 'package:zemingo_flutter/features/news_feed/presentation/screens/sections/label_column.dart';

// @RoutePage()
class LabelScreen extends StatelessWidget {
  const LabelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NewsLabelsBloc()..add(const NewsLabelsRefreshLabelsTimer()),
      child: BlocConsumer<NewsLabelsBloc, NewsLabelsState>(
        buildWhen: (_, current) => !current.status.isNavState,
        listenWhen: (_, current) => current.status.isNavState,
        listener: (context, state) async {
          final bloc = _getBloc(context);
          await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => NewsFeedCubit(
                      carsUseCase: getIt.get<GetCarsFeedUseCase>(),
                      sportsUseCase: getIt.get<GetSportsFeedUseCase>(),
                      cultureUseCase: getIt.get<GetCultureFeedUseCase>(),
                    )..initStream(),
                    child: NewsFeedScreen(onNewsTap: (newsTitle){
                      bloc.lastTap = newsTitle;
                    },),
                  )));
          _getBloc(context).add(const NewsLabelsRefreshLabelsTimer());
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("Labels!")),
            ),
            body: SafeArea(
              child: _LabelColumn(
                bloc: _getBloc(context),
              ),
            ),
          );
        },
      ),
    );
  }

  NewsLabelsBloc _getBloc(BuildContext context) =>
      context.read<NewsLabelsBloc>();
}
