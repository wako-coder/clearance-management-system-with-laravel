<?php

namespace App\Http\Livewire;

use Livewire\Component;

use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class EditRole extends Component
{
    public $showSuccesNotification = false;
    public $showDemoNotification = 0;
    public $role;
    public $permissions;
    public $name;
    public $newPermissions = [];
    public function mount($id)
    {
        $this->role = Role::where('id', $id)->with('permissions')->first();
        $xx = [];
        $this->name = $this->role->name;
        foreach($this->role->permissions as $p){
            array_push($xx, $p->id);
        }
        $this->permissions = Permission::all();
        $x = [];
        foreach($this->permissions as $per){
            $x[$per->id] = in_array($per->id,$xx);
        }
        $this->newPermissions = $x;
        
    }
    public function save()
    {
        $this->validate([
            'name' => 'required'
        ]);
        $this->role->name = $this->name;
        $this->role->save();
        foreach ($this->newPermissions as $key => $status) {
            if($status){
                $per = Permission::find($key)->assignRole($this->role);
            }
        }
        return redirect()->route('role-permission');

    }
    public function render()
    {
        $role = $this->role;
        $permissions = $this->permissions;
        return view('livewire.edit-role', compact('role', 'permissions'));
    }
}
