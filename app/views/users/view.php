<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\base\Model;
use yii\models\Users;

/* @var $this yii\web\View */
/* @var $model app\models\Users */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Users'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="users-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?=
        Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ])
        ?>
    </p>
    <div class="table-responsive">
        <?=
        DetailView::widget([
            'model' => $model,
            'attributes' => [
                'id',
                [
                    'attribute' => 'verify',
                    'format' => 'raw',
                    'value' => $model->verify == 1 ? 'Verified' : 'No'
                ],
                'verify',
                [
                    'attribute' => 'status',
                    'format' => 'raw',
                    'value' => $model->status == 1 ? 'Verified' : 'NO'
                ],
                'name',
                'email:email',
                'type',
                'mobile',
                'gender',
                'location',
                'experience',
                'specialization:ntext',
                'fees',
                'association',
                'address',
                'city.city_name',
                [
                    'attribute' => 'subscribe',
                    'format' => 'raw',
                    'value' => $model->subscribe == 1 ? 'Subscribed' : 'No'
                ],
                [
                    'attribute' => 'terms',
                    'format' => 'raw',
                    'value' => $model->terms == 1 ? 'Accepted' : 'No'
                ],
                'terms',
                'description:ntext',
                [
                    'attribute' => 'created_at',
                    'format' => ['date', 'php:d-m-Y']
                ],
            ],
        ])
        ?>
    </div>
</div>

<?php
$script = <<< JS
jQuery(document).ready(function() {
     jQuery("#w0").removeClass(" table-striped table-bordered detail-view");
});
JS;
$this->registerJs($script, $position = \yii\web\View::POS_END, $key = null);
?>