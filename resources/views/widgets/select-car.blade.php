<!-- Financing Calculator -->
{{--      {!! Form::open(array('url' => 'spesifikasi-mobil-baru', 'method' => 'post')) !!} --}}
<!-- a -->
@php
    $kotas = \App\City::all();
    $designs = \App\Design::all();
    $types = \App\Tipe::all();
    $mereks = \App\Merek::all();
@endphp

<div>
    <form action="{{ route('mobil.baru') }}" method="POST"></form>
    <div>
        <select name="city" class="form-control" id="city" required>
            <option value="">--Pilih Kota--</option>
            @foreach ($kotas as $kota)
                <option value="{{ $kota->id }}">{{ $kota->city }}</option>
            @endforeach

        </select>
    </div>
    <!-- kota end -->
    <!-- merek -->
    <div>

        <select name="merek" id="merek" class="form-control" required>
            <option value="">--Pilih Merek--</option>
            @foreach ($mereks as $merek)
                <option value="{{ $merek->id }}">{{ $merek->merek }}</option>
            @endforeach
        </select>


    </div>
    <!-- merek end -->
    <!-- model / design -->
    <div>

        <select name="design" id="design" class="form-control" required>
            <option>--Pilih Model--</option>
            @foreach ($designs as $design)
                <option value="{{ $design->id }}">{{ $design->design }}</option>
            @endforeach
        </select>
        {{--        @if ($errors->has('design')) --}}
        {{--            <span class="help-block"> --}}
        {{--                <strong>{{ $errors->first('design') }}</strong> --}}
        {{--            </span> --}}
        {{--        @endif --}}

    </div>
    <!-- model / design end -->
    <!-- tipe -->
    <div>

        <select name="tipe" id="tipe" class="form-control" required>
            <option>--Pilih Tipe--</option>
            @foreach ($types as $type)
                <option value="{{ $type->id }}">{{ $type->tipe }}</option>
            @endforeach
        </select>
        {{--      @if ($errors->has('tipe')) --}}
        {{--          <span class="help-block"> --}}
        {{--              <strong>{{ $errors->first('tipe') }}</strong> --}}
        {{--          </span> --}}
        {{--      @endif --}}

    </div>
    <!-- tipe end -->
    <button type="submit" class="btn btn-danger pull-right">Pilih</button>
    </form>

</div>
<script>
    // deo  bug
    console.log({!! $mereks !!})
</script>
<!-- end loan -->
