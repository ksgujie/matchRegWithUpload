@extends('layouts.main')

@section('content')

<div id="main_body">    
	
{{Form::open(['files'=>true])}}
	@include('student._form')
{{Form::close()}}

</div>

@stop