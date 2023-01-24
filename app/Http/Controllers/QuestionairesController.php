<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Questionaires;
use App\Models\RolesQuestions;
use Illuminate\Support\Facades\Log;

class QuestionairesController extends Controller
{
    /**
     * Display a listing of the question.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Fetching all the non-deleted questions
        $questionIds = RolesQuestions::whereNull('deleted_at')->select('question_id')->get();
        $questionIds = array_values(array_unique(array_column(json_decode(json_encode($questionIds)), 'question_id')));
        $questionsList = Questionaires::whereIn('id', $questionIds)->whereNull('deleted_at')->get(); 

        //Grouping questions together based on competency type for easy management on front-end
        $groupedList = array();
        $types = array_values(array_unique(array_column(json_decode(json_encode($questionsList)), 'competency_type')));

        foreach($types as $type) {
            foreach($questionsList as $question) {
                if($question->competency_type == $type) {
                    $groupedList[$type][] = $question;
                }
            }
        }
        return $groupedList;
    }

    /**
     * Show the form for creating a new question.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created question in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Create New Question
        $newQuestion = new Questionaires();
        $newQuestion->question = $request['statement'];
        $newQuestion->competency_type = $request['competency_type'];
        $newQuestion->competency_name = $request['competency_name'];
        $newQuestion->save();

        //Create new Roles and link them to the question.
        foreach($request['role_answer'] as $role) {
            if(!is_null( $role['role'])) {
                $roleQuestion = new RolesQuestions();
                $roleQuestion->role = $role['role'];
                $roleQuestion->question_id = $newQuestion->id;
                $roleQuestion->answer = $role['answer'];
                $roleQuestion->save();
            }
        }
    }

    /**
     * Display all questions.
     *
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $questionsList = Questionaires::whereNull('deleted_at')->get();
        $questionsList = json_decode(json_encode ( $questionsList ) , true);
        return response()->json(array_values($questionsList), 200);
    }

    /**
     * Get the question for edit based on ID
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $questionRecord = array();
        $question = Questionaires::find($id);
        $questionRecord['statement'] =  $question->question;
        $questionRecord['competency_type'] = $question->competency_type;
        $questionRecord['competency_name'] = $question->competency_name;

        //Getting related roles and scores
        $relatedRoles = RolesQuestions::select('role','answer')->where('question_id',$id)->whereNull('deleted_at')->orderBy('answer')->get();
        foreach($relatedRoles as $role){
            $subList = array();
            $subList['role'] = $role['role'];
            $subList['answer'] = $role['answer'];
            $questionRecord['role_answer'][] =  $subList;
        }
        return $questionRecord;
    }

    /**
     * Update the specified question in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $newRoles = array();
        $questionObj = Questionaires::find($id);
        $questionObj->question = $request['statement'];
        $questionObj->competency_type = $request['competency_type'];
        $questionObj->competency_name = $request['competency_name'];
        $questionObj->save();

        //Delete all related role relation anc create new to avoid duplication
        RolesQuestions::where('question_id',$id)->whereNull('deleted_at')->delete();
        foreach($request['role_answer'] as $role) {
            if(!is_null( $role['role'])) {
                $roleQuestion = new RolesQuestions();
                $roleQuestion->role = $role['role'];
                $roleQuestion->question_id = $questionObj->id;
                $roleQuestion->answer = $role['answer'];
                $roleQuestion->save();
            }
        }
    }

    /**
     * Remove the specified question from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $qObj = Questionaires::find($id);
        $qObj->delete();
        //Delete all related roles as well
        RolesQuestions::where('question_id',$id)->delete();
        return response()->json("success", 200);
    }
}
