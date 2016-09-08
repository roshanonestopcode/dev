<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%questions}}".
 *
 * @property integer $id
 * @property integer $cat_id
 * @property integer $u_id
 * @property string $point
 * @property string $question
 * @property integer $views
 * @property integer $viewer_id
 * @property integer $anonymous
 * @property string $created_on
 *
 * @property Categories $cat
 * @property Users $u
 * @property Users $viewer
 */
class Questions extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%questions}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cat_id', 'u_id', 'views', 'viewer_id', 'anonymous'], 'integer'],
            [['point', 'question'], 'string'],
            [['created_on'], 'safe'],
            [['cat_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categories::className(), 'targetAttribute' => ['cat_id' => 'id']],
            [['u_id'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['u_id' => 'id']],
            [['viewer_id'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['viewer_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'cat_id' => Yii::t('app', 'Category name'),
            'u_id' => Yii::t('app', 'Created User'),
            'point' => Yii::t('app', 'Point'),
            'question' => Yii::t('app', 'Question'),
            'views' => Yii::t('app', 'Views'),
            'viewer_id' => Yii::t('app', 'Viewer ID'),
            'anonymous' => Yii::t('app', 'Anonymous'),
            'created_on' => Yii::t('app', 'Created On'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCat()
    {
        return $this->hasOne(Categories::className(), ['id' => 'cat_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getU()
    {
        return $this->hasOne(Users::className(), ['id' => 'u_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getViewer()
    {
        return $this->hasOne(Users::className(), ['id' => 'viewer_id']);
    }

    /**
     * @inheritdoc
     * @return QuestionsQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new QuestionsQuery(get_called_class());
    }
}
