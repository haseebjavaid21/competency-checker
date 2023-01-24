<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Responses;
use App\Models\RolesQuestions;
use App\Models\Questionaires;
use Illuminate\Support\Facades\Log;

class ResponsesController extends Controller
{
    /**
     * Display a listing of the response.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new response.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created response in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Save user submitted personal infrormation
        $userResponse = new Responses();
        $userResponse->name = $request['name'];
        $userResponse->email = $request['email'];
        $userResponse->education_background = $request['education'];
        $userResponse->experience = $request['experience'];
        $userResponse->job_title = $request['job_title'];

        //Identify scores based on each question and save in array
        $answers = array();
        for($idx = 0 ; $idx < $request['questionCount'] ; $idx++) {
            $answers['question_' . $idx] =  $request['question_' . $idx];
        }

        $userResponse->answers = json_encode($answers);
        $userResponse->save();

        //Gather related answers from Link table
        $formattedList = array();
        $roleBasedQuestions = RolesQuestions::select('question_id','answer')
            ->where('role',$request['job_title'])
            ->get();

        //Group Scores based on comptency type and sub-group on competency name
        foreach($roleBasedQuestions as $qtn) {
            $group = array();
            $qstionObj = Questionaires::find($qtn->question_id);
            if($qstionObj) {
                $formattedList[$qstionObj->competency_type][$qstionObj->competency_name][$qstionObj->question] = $qtn->answer;
            }
        }

        //Check if a competency has more than one question, in that case take avaerge of the scores for those questions
        foreach($formattedList as $type => $compList) {
            foreach($compList as $key => $comp) {
                if(count($comp) > 0) {
                    $keys = array_keys($comp);
                    $score = ceil(array_sum(array_values($comp))/count($comp));
                    $formattedList[$type][$keys[0]] = $score;
                }
            }
        }

        return json_encode($formattedList);

    }

    /**
     * Display the specified response.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified response.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from response.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
