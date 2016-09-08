<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\grid\GridView;
use yii\widgets\Pjax;
use app\models\Categories;

/* @var $this yii\web\View */
/* @var $searchModel app\models\QuestionsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Questions');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="questions-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]);  ?>

    <p>
        <?php // Html::a(Yii::t('app', 'Create Questions'), ['create'], ['class' => 'btn btn-success'])  ?>
    </p>
    <div class="table-responsive">
        <?php Pjax::begin(['enablePushState' => FALSE]); ?>    <?=
        GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                [
                    'attribute' => 'cat_id',
                    'filter' => ArrayHelper::map(Categories::find()->asArray()->all(), 'id', 'categoryname'),
                    'value' => 'cat.categoryname'
                ],
                [
                    'attribute' => 'u_id',
                    'value' => 'u.name'
                ],
                'point:ntext',
                'question:ntext',
                // 'views',
                // 'viewer_id',
                // 'anonymous',
                // 'created_on',
                [
                    'attribute' => 'created_on',
                    'value' => 'created_on',
                    'filter' => \yii\jui\DatePicker::widget(['language' => 'en', 'dateFormat' => 'dd-MM-yyyy', 'class' => 'form-control']),
                    'format' => ['date', 'php:d-m-Y']
                ],
                [
                    'class' => 'yii\grid\ActionColumn',
                    'template' => '{view}  {delete}',
                    'buttons' => [
                        'view' => function ($url) {
                            return Html::a(
                                            '<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                        'title' => 'View',
                                        'data-pjax' => '0',
                                            ]
                            );
                        },
                                'delete' => function ($url) {
                            return Html::a(
                                            '<span class="glyphicon glyphicon-remove"></span>', $url, [
                                        'title' => 'Delete',
                                        'data-pjax' => '0',
                                            ]
                            );
                        },
                            ],
                        ],
                    ],
                    'tableOptions' => ['class' => 'table'],
                ]);
                ?>
                <?php Pjax::end(); ?></div></div>
