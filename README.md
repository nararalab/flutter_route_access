# flutter_route_access

플루터 블록 라우터 엑세스 (Anonymous Route Access)

## Getting Started

### BlocProvider

```dart
return BlocProvider.value(
    value: context.read<CounterCubit>(),
    child: const ViewCounter(),
);

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
