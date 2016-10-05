<?php

namespace App\Http\Controllers;

use App\News;
use Illuminate\Http\Request;

use App\Http\Requests;

class NewsController extends Controller
{
    private $model;

    public function __construct(News $news)
    {
        $this->model = $news;
    }

    public function jsonListNews()
    {
        $news = $this->model->all();
        return response()->json($news);
    }

    public function jsonNews($id)
    {
        $news = $this->model->find($id);
        if(!$news)
            return response()->json([])->setStatusCode(404);

        return response()->json($news);
    }
}
