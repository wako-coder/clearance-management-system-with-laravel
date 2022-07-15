<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\User;
use App\Models\Clerance;

class AllRequests extends Component
{
    public $users;
    public $col;
    public function mount()
    {
        $role = auth()->user()->roles()->first();
        $col = 'requested_from';
        if($role){
            $role = strtolower($role->name);
            if($role == 'police'){
                $col = 'police_status';}
            elseif($role == 'librarian') {
                $col = 'library_status';}
            elseif($role == 'procter') {
                $col = 'procter_status';}
            elseif($role == 'hmr') {
                $col = 'hmr_status';}
        }
        $this->col = $col;
        if($role != 'hmr'){
            $users = \DB::table('users')
                        ->join('clerances', 'clerances.user_id','=', 'users.id')
                        ->where('clerances.requested_from', 'student')
                        ->where('clerances.'.$col, 'pending')
                        ->orwhere('clerances.'.$col, 'declined')
                        ->select('clerances.'.$col,'clerances.user_id','clerances.id','users.name','users.email','users.username', 'clerances.created_at' )
                        ->get();
                }
        else{
            $users = \DB::table('users')
                        ->join('clerances', 'clerances.user_id','=', 'users.id')
                        ->where('clerances.requested_from', 'employee')
                        ->where('clerances.'.$col, 'pending')
                        ->orwhere('clerances.'.$col, 'declined')
                        ->select('clerances.'.$col,'clerances.user_id','clerances.id','users.name','users.email','users.username', 'clerances.created_at' )
                        ->get();
                }
        $this->users = $users;    
    }
    public function aprove($id, $col)
    {
        Clerance::find($id)->update([$col => 'aproved']);
        $this->mount();
    }
    public function decline($id, $col)
    {
        Clerance::find($id)->update([$col => 'declined']);
        $this->mount();
    }
    public function render()
    {
        $user = $this->users;
        return view('livewire.all-requests');
    }
}
