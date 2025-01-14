@extends('master.front')

@section('title')
  {{ __('Login') }}
@endsection

@section('content')

  <!-- Page Title-->
  <div class="page-title">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <ul class="breadcrumbs">
            <li><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>

            <li class="separator"></li>

            <li>{{ __('Login/Register') }}</li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <!-- Page Content-->
  <div class="container padding-bottom-3x mb-1">
    <div class="row">
      <div class="col-md-6">
        <form class="card" method="post" action="{{ route('user.login.submit') }}">
          @csrf

          <div class="card-body ">
            <h4 class="margin-bottom-1x text-center">{{ __('Login') }}</h4>

            <div class="form-group input-group">
              <input class="form-control" type="email" name="login_email" placeholder="{{ __('Email') }}" value="{{ old('login_email') }}"><span class="input-group-addon"><i class="icon-mail"></i></span>
            </div>

            @error('login_email')
              <p class="text-danger">{{ $message }}</p>
            @enderror

            <div class="form-group input-group">
              <input class="form-control" type="password" name="login_password" placeholder="{{ __('Password') }}" ><span class="input-group-addon"><i class="icon-lock"></i></span>
            </div>

            @error('login_password')
              <p class="text-danger">{{$message}}</p>
            @enderror

            <div class="d-flex flex-wrap justify-content-between padding-bottom-1x">
              <div class="custom-control custom-checkbox">
                <input class="custom-control-input" type="checkbox" id="remember_me">

                <label class="custom-control-label" for="remember_me">{{ __('Remember me') }}</label>
              </div>
              
              <a class="navi-link" href="{{ route('user.forgot') }}">{{ __('Forgot password?') }}</a>
            </div>

            <div class="text-center">
              <button class="btn btn-primary margin-bottom-none" type="submit"><span>{{ __('Login') }}</span></button>
            </div>

            <div class="row">
              <div class="col-lg-12 text-center mt-3">
                @if($setting->facebook_check == 1)
                  <a class="facebook-btn mr-2" href="{{ route('social.provider','facebook') }}">{{ __('Facebook login') }}</a>
                @endif

                @if($setting->google_check == 1)
                  <a class="google-btn" href="{{ route('social.provider','google') }}"> {{ __('Google login') }}</a>
                @endif
              </div>
            </div>
          </div>
        </form>
      </div>

      <div class="col-md-6">
        <div class="card register-area">
          <div class="card-body ">
            <h4 class="margin-bottom-1x text-center">{{ __('Register') }}</h4>

            <form class="row" action="{{ route('user.register.submit') }}" method="POST">
              @csrf

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="reg-fn">{{ __('First Name') }}</label>

                  <input class="form-control" type="text" name="first_name" placeholder="{{ __('First Name') }}" id="reg-fn" value="{{ old('first_name') }}">

                  @error('first_name')
                    <p class="text-danger">{{ $message }}</p>
                  @endif
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="reg-ln">{{ __('Last Name') }}</label>

                  <input class="form-control" type="text" name="last_name" placeholder="{{ __('Last Name') }}" id="reg-ln" value="{{ old('last_name') }}">

                  @error('last_name')
                    <p class="text-danger">{{ $message }}</p>
                  @endif
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="reg-email">{{ __('E-mail Address') }}</label>

                  <input class="form-control" type="email" name="email" placeholder="{{ __('E-mail Address') }}" id="reg-email" value="{{ old('email') }}">

                  @error('email')
                    <p class="text-danger">{{ $message }}</p>
                  @endif
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="reg-phone">{{ __('Phone Number') }}</label>

                  <input class="form-control" name="phone" type="text" placeholder="{{ __('Phone Number') }}" id="reg-phone" value="{{ old('phone') }}">

                  @error('phone')
                    <p class="text-danger">{{ $message }}</p>
                  @endif
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="reg-pass">{{ __('Password') }}</label>

                  <input class="form-control" type="password" name="password" placeholder="{{ __('Password') }}" id="reg-pass"  onkeyup="CheckPasswordStrength(this.value)">

                  @error('password')
                    <p class="text-danger">{{ $message }}</p>
                  @endif
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="reg-pass-confirm">{{ __('Confirm Password') }}</label>

                  <input class="form-control" type="password" name="password_confirmation" placeholder="{{ __('Confirm Password') }}" id="reg-pass-confirm">
                </div>
              </div>

              <div class="col-sm-12">
                <div class="form-group">
                  <span id="password_strength" style="display: none;">Password Strength: </span>
                </div>
              </div>

              @if ($setting->recaptcha == 1)
                <div class="col-lg-12 mb-4">
                  {!! NoCaptcha::renderJs() !!}
                  {!! NoCaptcha::display() !!}

                  @if ($errors->has('g-recaptcha-response'))
                    @php
                      $errmsg = $errors->first('g-recaptcha-response');
                    @endphp

                    <p class="text-danger mb-0">{{ __("$errmsg") }}</p>
                  @endif
                </div>
              @endif

              <div class="col-12 text-center">
                <button class="btn btn-primary margin-bottom-none" type="submit"><span>{{ __('Register') }}</span></button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Site Footer-->
@endsection

@push('frontScript')
  <script>
    function CheckPasswordStrength(password) {
      let password_strength = document.getElementById('password_strength');

      //if textBox is empty
      if (password.length == 0) {
        // password_strength.innerHTML = "";
        $("#password_strength").hide();

        return;
      } else {
        $("#password_strength").show();

        //Regular Expressions
        let regex = new Array();

        regex.push("[A-Z]"); //For Uppercase Alphabet
        regex.push("[a-z]"); //For Lowercase Alphabet
        regex.push("[0-9]"); //For Numeric Digits
        regex.push("[$@$!%*#?&]"); //For Special Characters

        let passed = 0;

        //Validation for each Regular Expression
        for (let i = 0; i < regex.length; i++) {
          if ((new RegExp (regex[i])).test(password)) {
            passed++;
          }
        }

        //Validation for Length of Password
        if (passed > 2 && password.length > 8) {
          passed++;
        }

        //Display of Status
        let color = "";
        let passwordStrength = "";

        switch(passed) {
          case 0:
            break;
          case 1:
            passwordStrength = "Password is Weak!";
            color = "Red";

            break;
          case 2:
            passwordStrength = "Password is Good!";
            color = "Yellow";

            break;
          case 3:
            break;
          case 4:
            passwordStrength = "Password is Strong!";
            color = "Green";

            break;
          case 5:
            passwordStrength = "Password is Very Strong.";
            color = "darkgreen";

            break;
        }

        password_strength.innerHTML   = passwordStrength;
        password_strength.style.color = color;
      }
    }
  </script>
@endpush