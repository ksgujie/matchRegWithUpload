<!DOCTYPE html>
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>环保创意作品展</title>
{{HTML::style('css/normalize.css')}}
{{--{{HTML::style('css/default.css')}}--}}
<style type="text/css">
    #gallery-wrapper {
    position: relative;
    max-width: 75%;
    width: 75%;
    margin:10px auto;
    }
    img.thumb {
    width: 100%;
    max-width: 100%;
    height: auto;
    }
    .white-panel {
    position: absolute;
    background: white;
    border-radius: 5px;
    box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    padding: 10px;
    }
    .white-panel h1 {
    font-size: 1em;
    }
    .white-panel h1 a {
    color: #A92733;
    }
    .white-panel:hover {
    box-shadow: 1px 1px 10px rgba(0,0,0,0.5);
    margin-top: -5px;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    }
</style>
<!--[if IE]>
    {{HTML::script("js/html5shiv.min.js")}}
<![endif]-->
</head>
<body>

<center>
		{{HTML::image('images/logo.jpg')}}</center>
	<table border="0" align="center" cellpadding="0" cellspacing="0" width="1024">
	<tr><td align="right"> {{HTML::link('user/login', '上传作品')}} </td></tr>
	</table>


<section id="gallery-wrapper" style="height: 1558px;">
	@foreach($students as $s)
		<article class="white-panel r1 c0" style="width: 203.5px; left: 0px; top: 0px;">
			{{HTML::image('pic/'.$s->id.'.jpg',null, ['class'=>'thumb'])}}
			<h1><a>{{$s->production}}</a></h1>
			<p>作者：{{$s->name}}</p>
			<p>辅导：{{$s->teacher}}</p>
			<p>学校：{{User::find($s->user_id)->username}}</p>
		</article>
	@endforeach
</section>

{{HTML::script("js/jquery.min.js")}}
{{HTML::script("js/pinterest_grid.js")}}
<script type="text/javascript">
    $(function(){
        $("#gallery-wrapper").pinterest_grid({
            no_columns: 3,
            padding_x: 10,
            padding_y: 10,
            margin_bottom: 50,
            single_column_breakpoint: 700
        });

    });
</script>
{{HTML::script("js/AnimOnScroll.js")}}
<script>
    new AnimOnScroll( document.getElementById( 'gallery-wrapper' ), {
        minDuration : 0.4,
        maxDuration : 0.7,
        viewportFactor : 0.2
    } );
</script>
</body><div></div><div></div></html>