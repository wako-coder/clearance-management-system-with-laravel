<div class="row"> 
    <div class="col-12">
      <div class="card mb-4">
        <div class="card-header pb-0">
          <h6>Clerance history</h6>
        </div>
        @if ($showSuccesNotification)
            <div wire:model="showSuccesNotification"
                class="mt-3 alert alert-primary alert-dismissible fade show" role="alert">
                <span class="alert-icon text-white"><i class="ni ni-like-2"></i></span>
                <span
                    class="alert-text text-white">{{ __('Your request have been sent successfuly!') }}</span>
                <button wire:click="$set('showSuccesNotification', false)" type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                </button>
            </div>
        @endif
        <div class="card-body px-0 pt-0 pb-2">
          <div class="table-responsive p-0">
            <div class="flex flex-justify-end">
                <button wire:click="sendRequest" class="btn bg-gradient-primary btn-sm mb-0" type="button">Send request</button>
            </div>
            <table class="table align-items-center mb-0">
              <thead>
                <tr>
                  <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Requested by</th>
                  @if(auth()->user()->hasRole('student'))
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Police</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Library</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Procter</th>
                  @elseif(auth()->user()->hasRole('employee'))
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">HMR</th>
                  @endif
                  <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Requested at</th>
                </tr>
              </thead>
              <tbody>
                @foreach($clerance as $clr)
                <tr>
                  <td>
                    <div class="d-flex px-2 py-1">
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="mb-0 text-sm">{{ auth()->user()->name }}</h6>
                      </div>
                    </div>
                  </td>
                  @if(auth()->user()->hasRole('student'))
                  <td class="align-middle text-sm">
                    <span class="badge badge-sm {{ $clr->police_status == 'aproved'? 'bg-gradient-success': 'bg-gradient-secondary'}}">{{ $clr->police_status }}</span>
                  </td>
                  <td class="align-middle text-center text-sm">
                    <span class="badge badge-sm {{ $clr->library_status == 'aproved'? 'bg-gradient-success': 'bg-gradient-secondary'}}">{{ $clr->library_status }}</span>
                  </td>
                  <td class="align-middle text-center text-sm">
                    <span class="badge badge-sm {{ $clr->procter_status == 'aproved'? 'bg-gradient-success': 'bg-gradient-secondary'}}">{{ $clr->procter_status }}</span>
                  </td>
                  @elseif(auth()->user()->hasRole('employee'))
                  <td class="align-middle text-center text-sm">
                    <span class="badge badge-sm {{ $clr->hmr_status == 'aproved'? 'bg-gradient-success': 'bg-gradient-secondary'}}">{{ $clr->hmr_status }}</span>
                  </td>
                  @endif
                  <td class="align-middle text-center">
                    <span class="text-secondary text-xs font-weight-bold">{{ $clr->created_at }}</span>
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