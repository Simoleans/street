<?php 

namespace App\Http\ViewComposers;

use Illuminate\Contracts\View\View;
use App\Convocatoria as Convocatoria;

class ProfileComposer {
    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
         $convocatoria = Convocatoria::where('status',1)->get();
         $view->with('convocatoria', $convocatoria);
    }

}

?>