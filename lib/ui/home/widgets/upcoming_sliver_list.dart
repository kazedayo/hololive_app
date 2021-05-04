part of '../home_page.dart';

List<Widget> buildUpcomingSliverList(
    BuildContext context, HomePageLoaded state) {
  return [
    SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              S.of(context).upcoming,
              style: Theme.of(context).textTheme.headline5,
            ),
            const Spacer(),
            DropdownButton<UpcomingFilter>(
              value: state.filter,
              underline: const SizedBox(),
              onChanged: (value) {
                BlocProvider.of<HomePageBloc>(context)
                    .add(UpdateFilter(filter: value!));
              },
              items: [
                DropdownMenuItem(
                  value: UpcomingFilter.hour,
                  child: Text(S.of(context).nextHour),
                ),
                DropdownMenuItem(
                  value: UpcomingFilter.day,
                  child: Text(S.of(context).today),
                ),
                DropdownMenuItem(
                  value: UpcomingFilter.week,
                  child: Text(S.of(context).thisWeek),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    () {
      if (state.upcomingList.isEmpty) {
        return SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: const EdgeInsets.only(bottom: 16),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text(
                  S.of(context).noScheduledStream,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        );
      } else {
        return SliverSafeArea(
          top: false,
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final StreamVideoItem item = state.upcomingList[index];
                return VideoCard(
                  key: PageStorageKey(item.yt_video_key),
                  item: item,
                  isLive: false,
                );
              },
              childCount: state.upcomingList.length,
            ),
          ),
        );
      }
    }(),
  ];
}
