part of '../home_page.dart';

List<Widget>? buildLiveSliverList(
    BuildContext context, HomePageLoaded state, AppSettings settings) {
  if (state.liveList.isNotEmpty) {
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            bottom: 8,
          ),
          child: Row(
            children: [
              Text(
                S.of(context).live,
                style: Theme.of(context).textTheme.headline5,
              ),
              Lottie.asset(
                'assets/pulse.json',
                width: 40,
              )
            ],
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.only(bottom: 32),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final StreamVideoItem item = state.liveList[index];
              switch (settings.listDisplayMode) {
                case ListDisplayMode.card:
                  return VideoCard(
                    key: PageStorageKey(item.ytVideoKey),
                    item: item,
                    isLive: true,
                  );
                case ListDisplayMode.compact:
                  return CompactItem(
                    key: PageStorageKey(item.ytVideoKey),
                    item: item,
                    isLive: true,
                  );
              }
            },
            childCount: state.liveList.length,
          ),
        ),
      ),
    ];
  }
  return null;
}
