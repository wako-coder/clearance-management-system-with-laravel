<?php

namespace App\Http\Livewire\LaravelExamples;
use App\Models\User;
use Livewire\WithFileUploads;

use Livewire\Component;

class UserProfile extends Component
{
    use WithFileUploads;
    public User $user;
    public $showSuccesNotification  = false;
    public $showDemoNotification = false;

    public $photo = '';
    
    protected $rules = [
        'user.name' => 'max:40|min:3',
        'user.email' => 'email:rfc,dns',
        'user.phone' => 'max:10',
        'user.about' => 'max:200',
        'user.location' => 'min:3',
        'photo' => 'image|max:2048',
    ];

    public function mount() { 
        $this->user = auth()->user();
    }

    public function save() {
        if($this->photo){
            $xx = $this->photo->store('public/profile-photos');
            $this->user->profile = substr($xx, 7);
        }
        $this->validate();
        $this->user->save();
        $this->showSuccesNotification = true;
    }
    public function render()
    {
        return view('livewire.laravel-examples.user-profile');
    }
}
