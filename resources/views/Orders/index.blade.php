@extends('main')
@section('menu')
    <a href="{{route('order.create')}}" class="btn text-light mx-2" style="background: #6671A3;">New Order</a>
    <a href="/orders" class="btn text-light mx-2" style="background: #6671A3;">All Orders</a>
@endsection
@section('content')

    <div class="container">
    <div class="row gy-3">
        <table class="table bg-light" style="border-radius: 4px;">
            <thead>
                <tr >
                    <th class="p-4">Order ID</th>
                    <th class="p-4">Customer</th>
                    <th class="p-4">Order Date</th>
                    <th class="p-4">Total</th>
                    <th class="p-4">Actions</th>
                </tr>
            </thead>
            <tbody class="p-4">
                @foreach($models as $model)
                <tr class="border-bottom m-2 p-2">
                    <td class="p-4 card-title">{{ $model->Id }}</td>
                    <td class="h4 p-4">{{ $model->customer->Name }} {{ $model->customer->Surname }}</td>
                    <td class="p-4">{{ date('Y-m-d H:i', strtotime($model->OrderDateTime)) }}</td>
                    <td class="p-4">{{ $model->Total }}&euro;</td>
                    <td class="p-4">
                        <div class="my-2">
                            <a href="{{ route('order.details', $model->Id)}}" class="btn text-light mx-2" style="background:#6671A3;"><i class="fa-solid fa-eye"></i></a>
                            <a href="{{ route('order.edit', $model->Id)}}" class="btn text-light mx-2" style="background:#6671A3;"><i class="fa-solid fa-pen-to-square"></i></a>
                            <a href="{{ route('order.delete', $model->Id) }}" class="btn text-light mx-2" style="background:#E5C9BF;"><i class="fa-solid fa-trash"></i></a>
                        </div>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
