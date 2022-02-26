# flutter_route_access

플루터 블록 라우터 엑세스 (Generate Route Access)

## Getting Started

onGenerateRoute 이름지정된 라우트에 BlocProvider.value 사용

### BlocProvider

```dart
final CounterCubit _counterCubit = CounterCubit();

onGenerateRoute: (RouteSettings settings) {
switch (settings.name) {
    case '/':
    return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
        value: _counterCubit,
        child: const MyHomePage(),
        ),
    );
    case '/counter':
    return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
        value: _counterCubit,
        child: const ViewCounter(),
        ),
    );
    default:
    return null;
}
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
