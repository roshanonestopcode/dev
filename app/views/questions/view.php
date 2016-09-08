<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Questions */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Questions'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="questions-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Back'), ['index'], ['class' => 'btn btn-primary']) ?>
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
                'cat.categoryname',
                'u.name',
                'point:ntext',
                'question:ntext',
                'views',
                'viewer.name',
                [
                    'attribute' => 'anonymous',
                    'format' => 'raw',
                    'value' => $model->anonymous == 1 ? 'Show' : 'Not Show'
                ],
                [
                    'attribute' => 'created_on',
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