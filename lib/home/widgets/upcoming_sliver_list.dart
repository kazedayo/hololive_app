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
              'Upcoming Streams',
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
              items: const [
                DropdownMenuItem(
                  value: UpcomingFilter.hour,
                  child: Text('Next hour'),
                ),
                DropdownMenuItem(
                  value: UpcomingFilter.day,
                  child: Text('Today'),
                ),
                DropdownMenuItem(
                  value: UpcomingFilter.week,
                  child: Text('This week'),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    () {
      if (state.upcomingList.isEmpty) {
        return const SliverToBoxAdapter(
          child: Center(
            child: Text(
              'No Scheduled Streams.',
              style: TextStyle(
                color: Colors.grey,
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
