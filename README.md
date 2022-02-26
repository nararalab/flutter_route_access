# flutter_route_access

플루터 블록 라우터 엑세스 (Named Route Access)

## Getting Started

이름지정된 라우트에 BlocProvider.value 사용

### BlocProvider

```dart
final CounterCubit _counterCubit = CounterCubit();

routes: {
'/': (context) => BlocProvider.value(
        value: _counterCubit,
        child: const MyHomePage(),
    ),
'/counter': (context) => BlocProvider.value(
        value: _counterCubit,
        child: const ViewCounter(),
    ),
},

@override
void dispose() {
_counterCubit.close();
super.dispose();
}

BlocProvider.of<CounterCubit>(context).increment();
```

### BlocBuilder

```dart
child: BlocBuilder<CounterCubit, CounterState>(
    builder: (context, state) {
        return Text(
            '${state.counter}',
            style: const TextStyle(fontSize: 52.0),
        );
    },
),
```

## Dependency

```bash
flutter pub add equatable
flutter pub add flutter_bloc
```
