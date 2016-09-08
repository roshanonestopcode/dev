<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Users */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="users-form">

    <?php $form = ActiveForm::begin(); ?>
    <?php $array_status_list = array('0' => 'In-Active', '1' => 'Active'); ?>
    <?php $array_status_list = array('0' => 'In-Active', '1' => 'Active'); ?>
    <?= $form->field($model, 'status')->dropDownList($array_status_list,['prompt' => '--Select--', 'class' => 'form-control']);?>
    <?= $form->field($model, 'verify')->dropDownList($array_status_list,['prompt' => '--Select--', 'class' => 'form-control'] );?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
