<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermission extends Component
{
    public $role_or_permission_name;
    public $showSuccesNotification  = false;
    public $roles;
    public function mount()
    {
        $this->roles = Role::with('permissions')->get();
    }
    public function closeButton()
    {
        $this->showSuccesNotification = false;
        $this->render();
    }
    public function deleteRole($id)
    {
        Role::where('id', $id)->delete();
        $this->showSuccesNotification = true;
        $this->render();
    }
    public function addRole($name)
    {
        $this->validate([
            'role_or_permission_name' => 'required'
        ]);
        if($name == 'role' ){
            $role = Role::create(['name' => $this->role_or_permission_name]);
        }
        elseif($name == 'permission'){
            $permission = Permission::create(['name' => $this->role_or_permission_name]);
        }
        $this->role_or_permission_name = "";
        $this->showSuccesNotification = true;
    }
    public function render()
    {
        $roles = $this->roles;
        return view('livewire.role-permission', compact('roles'));
    }
}
