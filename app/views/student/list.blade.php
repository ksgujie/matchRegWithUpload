@extends('layouts.main')

@section('content')

<div id="main_body">    

      <table class="tb">
        <tr>
            <th colspan="8"><h3>已报名选手</h3>（如报名有误，请删除错误信息，重新报名）</th>
        </tr>

        <tr>
            <th><h3>序号</h3></th>
            <th><h3>姓名</h3></th>
            <th><h3>作品名称</h3></th>
            <th><h3>辅导老师</h3></th>
            <th><h3>项目</h3></th>
            <th><h3>组别</h3></th>
            <th><h3>备注</h3></th>
            <th><h3>删除</h3></th>
        </tr>
        
<!-- {{$i=0}} -->
@foreach ($students as $student)        
<!-- {{$i++}} -->
        <tr>
            <td style="width:50px;">{{$i}}</td>
            <td style="width:200px;"> {{ $student->name }} </td>
            <td style="width:200px;"> {{ $student->production }} </td>
            <td style="width:200px;"> {{ $student->teacher }} </td>

          <td style="width:200px;">  {{ $student->item->name }} </td>
          <td> {{ $student->group->name}}  </td>
          <td> {{ $student->remark}}  </td>
          <td>	
{{--          	  {{ HTML::link("student/edit/".$student->id, '修改') }}--}}
          	  {{ HTML::link("student/del/".$student->id, '删除', ['onclick'=>"return confirm(\"确认删除 $student->name ？\")"]) }}
          </td>
        </tr>
          <tr>
              <td colspan="8"> {{HTML::image("pic/" . $student->id . '.jpg')}} </td>
          </tr>
@endforeach
    </table>

</div>

@stop