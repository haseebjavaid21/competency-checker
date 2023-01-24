<?php

namespace App\Http\Controllers;

use App\Models\Competency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CompetencyController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $comp = new Competency();
        $comp->name = $request['name'];
        $comp->save();
    }

    /**
     * Get current competencies and return to view
     */
    public function index()
    {
        $competencyList = Competency::whereNull('deleted_at')->select('name')->get();
        $competencyList = array_values(array_unique(array_column(json_decode(json_encode($competencyList)), 'name')));
        return $competencyList;
    }

}
