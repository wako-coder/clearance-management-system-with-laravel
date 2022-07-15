<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
class EditUser extends Component
{
    public $showSuccesNotification = false;
    public $user;
    public $permissions;
    public $newPermissions = [];
    public $roles;
    public $newRoles;
    public $myUser = ['name', 'email', 'phone'];
    public function mount($id)
    {
        $this->user = User::where('id', $id)->with('roles','permissions')->first();
        $this->myUser['name'] = $this->user->name; 
        $this->myUser['email'] = $this->user->email;
        $this->myUser['phone'] = $this->user->phone;
        $xx = [];
        foreach($this->user->permissions as $p){
            array_push($xx, $p->id);
        }
        $this->permissions = Permission::all();
        $x = [];
        foreach($this->permissions as $per){
            $x[$per->id] = in_array($per->id,$xx);
        }
        $this->newPermissions = $x;
        ////////////////////////////////////////////////
        $xx = [];
        foreach($this->user->roles as $key => $role){
            array_push($xx, $role->id);
        }
        $x = [];
        $this->roles = Role::all();
        foreach ($this->roles as $r) {
            $x[$r->id] = in_array($r->id, $xx);
        }
        $this->newRoles = $x;

    }
    public function save()
    {
        $this->validate([
            'myUser.name' => 'required',
            'myUser.phone' => 'required',
            'myUser.email' => 'required',
        ]);
        $user = $this->user;

        $user->name = $this->myUser['name'];
        $user->email = $this->myUser['email'];
        $user->phone = $this->myUser['phone'];
        $user->save();
        foreach ($this->newPermissions as $key => $status) {
            if($status){
                $this->user->givePermissionTo($key);
            }
        }
        foreach ($this->newRoles as $key => $status) {
            if($status){
                $this->user->assignRole($key);
            }
        }
        return redirect()->route('user-management');

    }
    public function render()
    {
        $user = $this->user;
        return view('livewire.edit-user', compact('user'));
    }
}
