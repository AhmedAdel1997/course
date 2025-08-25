import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/get_ads/get_ads_cubit.dart';
import '../cubit/get_services/get_services_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetServicesCubit()),
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => GetAdsCubit()),
      ],
      child: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();
    context.read<CounterCubit>().getCounter();
    context.read<GetServicesCubit>().getServices();
    context.read<GetAdsCubit>().getAds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().deleteCounter();
        },
        child: Icon(Icons.delete),
      ),
      // body: Center(
      //   child: TextButton(
      //     onPressed: () {
      //       context.read<CounterCubit>().increaseCounter(); //listen false
      //     },
      //     child: BlocConsumer<CounterCubit, int>(
      //       listener: (context, state) {
      //         if (state > 10) {
      //           log('Limit Exceeded !!');
      //           context.read<CounterCubit>().saveCounter();
      //         }
      //       },
      //       builder: (context, counter) {
      //         return Text('Home $counter', style: TextStyle(fontSize: 30));
      //       },
      //     ),
      //   ),
      // ),\
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Advertisements',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // SizedBox(height: 20),
          BlocBuilder<GetAdsCubit, GetAdsState>(
            builder: (context, state) {
              if (state is GetAdsLoading) {
                return Center(child: CircularProgressIndicator.adaptive());
              }
              if (state is GetAdsFailure) {
                return Center(
                  child: Text(
                    state.errorMessage,
                    style: TextStyle(fontSize: 20),
                  ),
                );
              }
              if (state is GetAdsSuccess) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 200,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ),
                      // items: List.generate(state.ads.length, (index) {
                      //   return Image.network(state.ads[index].image);
                      // }),
                      //Famous way to use carousel slider
                      items:
                          state.ads.map((adModel) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.network(
                                      adModel.image,
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                    Container(
                                      color: Colors.black45,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        adModel.title,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }).toList(),
                    ),
                    // child: ListView.separated(
                    //   scrollDirection: Axis.horizontal,
                    //   itemCount: state.ads.length,
                    //   itemBuilder: (context, index) {
                    //     return Image.network(state.ads[index].image);
                    //   },
                    //   separatorBuilder: (context, index) {
                    //     return SizedBox(width: 20);
                    //   },
                    // ),
                  ),
                );
              }
              return SizedBox();
            },
          ),
          // SizedBox(height: 20),
          Text(
            'Services',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          BlocBuilder<GetServicesCubit, GetServicesState>(
            builder: (context, state) {
              if (state is GetServicesLoading) {
                return Center(child: CircularProgressIndicator.adaptive());
              }
              if (state is GetServicesFailure) {
                return Center(
                  child: Text(
                    state.errorMessage,
                    style: TextStyle(fontSize: 20),
                  ),
                );
              }
              if (state is GetServicesSuccess) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.separated(
                      itemCount: state.services.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Text(
                            state.services[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                    ),
                  ),
                );
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
