<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Clerance as Cl;

class Clerance extends Component
{
    public $showSuccesNotification = 0;
    public $clerance;
    public function mount()
    {
        $this->clerance = Cl::where('user_id', auth()->user()->id)->get();
    }
    public function sendRequest()
    {
        $emp = auth()->user()->hasRole('employee');
        $from = $emp?'employee':'student';
        Cl::create([
            'user_id' => auth()->user()->id,
            'requested_from' => $from,
        ]);  
        $this->showSuccesNotification = 1;
        $this->render();
    }
    public function render()
    {
        $clerance = $this->clerance;
        return view('livewire.clerance', compact('clerance'));
    }
}
