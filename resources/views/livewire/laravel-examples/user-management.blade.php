<div class="main-content">
    <!-- <div class="alert alert-secondary mx-4" role="alert">
        <span class="text-white"><strong>Add, Edit, Delete features are not functional!</strong> This is a
            <strong>PRO</strong> feature!
            Click <strong><a href="https://demos.creative-tim.com/soft-ui-dashboard-laravel-pro/dashboard-default" target="_blank"
                    class="text-white">here</a></strong>
            to see the PRO
            product!</span>
    </div> -->

    <div class="row">
        <div class="col-12">
            <div class="card mb-4 mx-4">
                <div class="card-header pb-0">
                    <div class="d-flex flex-row justify-content-between">
                        <div>
                            <h5 class="mb-0">All Users</h5>
                        </div>
                    </div>
                </div>
                <div class="card-body px-0 pt-0 pb-2">
                    <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                            <thead>
                                <tr> 
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                        Photo
                                    </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                        Name
                                    </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                      Email
                                    </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                        Roles
                                    </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                        Permissions
                                    </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                        Creation Date
                                    </th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($users as $user)
                                <tr>
                                    <td>
                                        <div>
                                            <img src="../assets/img/team-2.jpg" class="avatar avatar-sm me-3">
                                        </div>
                                    </td>
                                    <td class="text-center">
                                        <p class="text-xs font-weight-bold mb-0">{{$user->name}}</p>
                                    </td>
                                    <td class="text-center">
                                        <p class="text-xs font-weight-bold mb-0">{{$user->email}}</p>
                                    </td>
                                    <td class="text-center">
                                        <p class="text-xl font-weight-bold mb-0">
                                        @foreach($user->roles as $role)
                                            {{$role->name }} @if(!$loop->last){{','}} @endif
                                        @endforeach
                                        </p>
                                    </td>
                                    <td class="text-center">
                                        <p class="text-xl font-weight-bold mb-0">
                                        @foreach($user->permissions as $permission)
                                            {{$permission->name }} @if(!$loop->last){{','}} @endif
                                        @endforeach
                                        </p>
                                    </td>
                                    <td class="text-center">
                                        <span class="text-secondary text-xs font-weight-bold">{{$user->created_at}}</span>
                                    </td>
                                    <td class="text-center">
                                        <a href="{{route('edit-user', $user->id )}}" class="mx-3" data-bs-toggle="tooltip"
                                            data-bs-original-title="Edit user">Edit
                                            <i class="fas fa-user-edit text-secondary"></i>
                                        </a>
                                        <span>
                                            <i class="cursor-pointer fas fa-trash text-secondary"></i>
                                        </span>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
