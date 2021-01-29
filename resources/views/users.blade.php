@extends('templates/html')

@section('title', 'Users List')

@section('content')
    <list :items='@json($users)'></list>
@endsection
