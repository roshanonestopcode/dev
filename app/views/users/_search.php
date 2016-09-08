<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\UsersSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="users-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'email') ?>

    <?= $form->field($model, 'password_hash') ?>

    <?= $form->field($model, 'api_key') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'type') ?>

    <?php // echo $form->field($model, 'mobile') ?>

    <?php // echo $form->field($model, 'lat') ?>

    <?php // echo $form->field($model, 'longitude') ?>

    <?php // echo $form->field($model, 'gender') ?>

    <?php // echo $form->field($model, 'location') ?>

    <?php // echo $form->field($model, 'experience') ?>

    <?php // echo $form->field($model, 'specialization') ?>

    <?php // echo $form->field($model, 'fees') ?>

    <?php // echo $form->field($model, 'consult_time') ?>

    <?php // echo $form->field($model, 'profile_image') ?>

    <?php // echo $form->field($model, 'gcm_registration_id') ?>

    <?php // echo $form->field($model, 'verify') ?>

    <?php // echo $form->field($model, 'association') ?>

    <?php // echo $form->field($model, 'qb_id') ?>

    <?php // echo $form->field($model, 'address') ?>

    <?php // echo $form->field($model, 'city_id') ?>

    <?php // echo $form->field($model, 'remove_or_not') ?>

    <?php // echo $form->field($model, 'subscribe') ?>

    <?php // echo $form->field($model, 'terms') ?>

    <?php // echo $form->field($model, 'description') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
