<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cities".
 *
 * @property integer $city_id
 * @property string $city_name
 */
class Cities extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'cities';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['city_name'], 'required'],
            [['city_name'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'city_id' => Yii::t('app', 'City ID'),
            'city_name' => Yii::t('app', 'City Name'),
        ];
    }

    /**
     * @inheritdoc
     * @return CitiesQuery the active query used by this AR class.
     */
    public static function find() {
        return new CitiesQuery(get_called_class());
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCities() {
        return $this->hasMany(Cities::className(), ['city_id' => 'city_id']);
    }

}
