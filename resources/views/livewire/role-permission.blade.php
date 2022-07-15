<div class="row">
    @if ($showSuccesNotification)
        <div class="mt-3 alert alert-primary alert-dismissible fade show" role="alert">
            <span class="alert-icon text-white"><i class="ni ni-like-2"></i></span>
            <span
                class="alert-text text-white">{{ __('Change have been done successfuly!') }}</span>
            <button wire:click="closeButton" type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif
    <div class="col-12">
      <div class="card mb-4">
        <div class="card-header pb-0">
          <h6>Roles table</h6>
        </div>
        <div class="card-body px-0 pt-0 pb-2">
          <div class="table-responsive p-0">
            <table class="table align-items-center mb-0">
              <thead>
                <tr>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Name</th>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Permissions</th>
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
                  <th class="text-secondary opacity-7"></th>
                </tr>
              </thead>
              <tbody>
              @foreach($roles as $role)  
              <tr>
                  <td>
                    <div class="d-flex px-2 py-1">
                      <div>
                        <img src="../assets/img/team-2.jpg" class="avatar avatar-sm me-3">
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="mb-0 text-sm">{{$role->name}}</h6>
                      </div>
                    </div>
                  </td>
                  <td>
                    <p class="text-xl font-weight-bold mb-0">
                      @foreach($role->permissions as $permission)
                        {{$permission->name }}@if(!$loop->last){{','}}@endif
                      @endforeach
                    </p>
                  </td>
                  
                  <td class="text-center">
                    <a href="{{route('edit-role', $role->id )}}" class="mx-3" data-bs-toggle="tooltip"
                        data-bs-original-title="Edit role">
                        <i class="fas fa-user-edit text-secondary"></i>
                    </a>
                    <span wire:click="deleteRole({{$role->id}})">
                        <i class="cursor-pointer fas fa-trash text-secondary"></i>
                    </span>
                </td>
                </tr>
                @endforeach
              </tbody>
            </table>
            <div class="p-4 flex flex-row w-1/2">
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="@error('role_name')border border-danger rounded-3 @enderror">
                            <input wire:model="role_or_permission_name" class="form-control" type="text" placeholder="Role or Permission name"
                                id="role_name">
                        </div>
                        @error('role_name') <div class="text-danger">{{ $message }}</div> @enderror
                    </div>
                </div>
                <button wire:click="addRole('role')" class="btn bg-gradient-primary btn-sm mb-0" type="button">+&nbsp; New Role</button>
                <button wire:click="addRole('permission')" class="btn bg-gradient-primary btn-sm mb-0" type="button">+&nbsp; New Permission</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
