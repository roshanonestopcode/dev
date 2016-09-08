<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UsersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Users');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="users-index ">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]);  ?>

    <!--<p>
    <?= Html::a(Yii::t('app', 'Create Users'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>-->
    <div class="table-responsive">
        <?php Pjax::begin(['enablePushState' => FALSE]); ?>    <?=
        GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'showHeader' => true,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                //'id',
                [
                    'attribute' => 'profile_image',
                    'label' => 'Image',
                    'format' => 'html',
                    'value' => function ($model) {
                        $url = $model['profile_image'];
                        return Html::img($url, ['alt' => 'profile image', 'width' => '100', 'height' => '100']);
                    }
                        ],
                        'name',
                        'email:email',
                        //'password_hash:ntext',
                        //'api_key',
                        //'status',
                        //'created_at',
                        //'type',
                        'mobile',
                        //lat:ntext',
                        // 'longitude:ntext',
                        'gender',
                        // 'location',
                        // 'experience',
                        // 'specialization:ntext',
                        // 'fees',
                        // 'consult_time',
                        // 'profile_image',
                        // 'gcm_registration_id:ntext',
                        // 'verify',
                        // 'association',
                        // 'qb_id',
                        // 'address',
                        // 'city_id',
                        // 'remove_or_not',
                        // 'subscribe',
                        // 'terms',
                        // 'description:ntext',
                                [
                                    'label' => 'Download',
                                    'format' => 'raw',
                                    'value' => function ($data) {
                                        return Html::a($data->licence, ['/users/download', 'id' => $data->id]);
                                    },
                                ],
                                [
                                    'attribute' => 'created_at',
                                    'value' => 'created_at',
                                    'filter' => \yii\jui\DatePicker::widget(['language' => 'en', 'dateFormat' => 'dd-MM-yyyy', 'class' => 'form-control']),
                                    'format' => ['date', 'php:d-m-Y']
                                ],
                                ['class' => 'yii\grid\ActionColumn'],
                            ],
                            'tableOptions' => ['class' => 'table'],
                        ]);
                        ?>
                        <?php Pjax::end(); ?>
    </div>
</div>
