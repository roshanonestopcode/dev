<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\QuestionsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="questions-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'cat_id') ?>

    <?= $form->field($model, 'u_id') ?>

    <?= $form->field($model, 'point') ?>

    <?= $form->field($model, 'question') ?>

    <?php // echo $form->field($model, 'views') ?>

    <?php // echo $form->field($model, 'viewer_id') ?>

    <?php // echo $form->field($model, 'anonymous') ?>

    <?php // echo $form->field($model, 'created_on') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
