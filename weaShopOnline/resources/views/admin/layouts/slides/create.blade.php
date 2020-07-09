@extends('admin.shared.main')
@section('title')
    Add new slide
@endsection
@section('content')
    <div class="content_yield">
        {{ Form::open(['route' => 'slide.store', 'method' => 'post','enctype '=>'multipart/form-data','class' => 'col-md-12 row']) }}
        <div class="col-md-12 m-auto">
            <h3 class="mb-5 font-weight-bold">Slide</h3>
            <div class="col-lg-10 col-md-12 col-sm-12 row">
                <div class="form-group">
                    {{ Form::label('Content: ','',['class' => 'font-weight-bold']) }}
                    {!! Form::text('content', null, [
                        'class' => 'form-control',
                        'placeholder'=>"Content"
                    ])
                    !!}
                    <span class="text-danger">{{ $errors->first('content')}}</span>
                </div>
                <div class="form-group">
                    {{ Form::label('Description: ','',['class' => 'font-weight-bold']) }}
                    {!! Form::textArea('description', null, [
                        'class' => 'form-control',
                        'rows' => '3',
                        'placeholder'=>"Description"
                    ])
                    !!}
                    <span class="text-danger">{{ $errors->first('description')}}</span>
                </div>
                <div class="form-group">
                    {{ Form::label('Url: ','',['class' => 'font-weight-bold']) }}
                    {!! Form::text('url', null, [
                        'class' => 'form-control',
                        'placeholder'=>"Url"
                    ])
                    !!}
                    <span class="text-danger">{{ $errors->first('url')}}</span>
                </div>                
                <div class="form-group">
                    {{ Form::label('Image: ','',['class' => 'font-weight-bold']) }}
                    {{ Form::file('image', null, ['class' => 'form-control' ]) }}
                    <br>
                    <span class="text-danger">{{ $errors->first('image')}}</span>
                </div>
                <div class="form-group text-right">
                    <a class="btn btn-info mt-3" href="{{ route('slide.index') }}" title="back"><i class="fas fa-arrow-left"> Back to list</i></a>
                    {{ Form::submit('Save',['class' => 'font-weight-bold text-white btn bg-color-green mt-3']) }}
                </div>
            </div>
        </div>
        {{ Form::close() }}
    </div>
@endsection