<?php

namespace App\Http\Livewire\Auth;

use Livewire\Component;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class SignUp extends Component
{
    public $name = '';
    public $email = '';
    public $password = '';
    public $username = '';
    public $phone = '';

    protected $rules = [
        'name' => 'required|min:3',
        'username' => 'required|min:5|unique:users',
        'phone' => 'required|numeric|digits:10',
        'email' => 'required|email|unique:users',
        'password' => 'required|min:6'
    ];

    public function mount() {
        if(auth()->user()){
            redirect('/dashboard');
        }
    }

    public function register() {
        $this->validate();
        $user = User::create([
            'name' => $this->name,
            'phone' => $this->phone,
            'username' => $this->username,
            'email' => $this->email,
            'password' => Hash::make($this->password)
        ]);
        $user->givePermissionTo('request-clereance');

        auth()->login($user);

        return redirect('/dashboard');
    }

    public function render()
    {
        return view('livewire.auth.sign-up');
    }
}
