<?php

namespace app\models;

use Yii;
use app\models\Cities;

/**
 * This is the model class for table "users".
 *
 * @property integer $id
 * @property string $name
 * @property string $email
 * @property string $password_hash
 * @property string $api_key
 * @property string $status
 * @property string $created_at
 * @property string $type
 * @property string $mobile
 * @property string $lat
 * @property string $longitude
 * @property string $gender
 * @property string $location
 * @property string $experience
 * @property string $specialization
 * @property string $fees
 * @property string $consult_time
 * @property string $profile_image
 * @property string $gcm_registration_id
 * @property integer $verify
 * @property string $association
 * @property string $qb_id
 * @property string $address
 * @property integer $city_id
 * @property integer $remove_or_not
 * @property integer $subscribe
 * @property integer $terms
 * @property string $description
 *
 * @property RatingUsers[] $ratingUsers
 * @property RatingUsers[] $ratingUsers0
 * @property UserTasks[] $userTasks
 */
class Users extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'users';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['status', 'verify'], 'required'],
            [['password_hash', 'lat', 'longitude', 'specialization', 'gcm_registration_id', 'description'], 'string'],
            [['created_at'], 'safe'],
            [['verify', 'city_id', 'remove_or_not', 'subscribe', 'terms'], 'integer'],
            [['name'], 'string', 'max' => 250],
            [['email', 'type'], 'string', 'max' => 255],
            [['api_key'], 'string', 'max' => 32],
            [['status', 'gender', 'location', 'experience', 'fees'], 'string', 'max' => 150],
            [['mobile'], 'string', 'max' => 12],
            [['consult_time', 'profile_image', 'qb_id'], 'string', 'max' => 200],
            [['association', 'address'], 'string', 'max' => 300],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'email' => 'Email',
            'password_hash' => 'Password Hash',
            'api_key' => 'Api Key',
            'status' => 'Status',
            'created_at' => 'Created At',
            'type' => 'Type',
            'mobile' => 'Mobile',
            'lat' => 'Lat',
            'longitude' => 'Longitude',
            'gender' => 'Gender',
            'location' => 'Location',
            'experience' => 'Experience',
            'specialization' => 'Specialization',
            'fees' => 'Fees',
            'consult_time' => 'Consult Time',
            'profile_image' => 'Profile Image',
            'gcm_registration_id' => 'Gcm Registration ID',
            'verify' => 'Verify',
            'association' => 'Association',
            'qb_id' => 'Qb ID',
            'address' => 'Address',
            'city_id' => 'City ID',
            'remove_or_not' => 'Remove Or Not',
            'subscribe' => 'Subscribe',
            'terms' => 'Terms',
            'description' => 'Description',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRatingUsers() {
        return $this->hasMany(RatingUsers::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRatingUsers0() {
        return $this->hasMany(RatingUsers::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserTasks() {
        return $this->hasMany(UserTasks::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCity() {
     
        return $this->hasOne(Cities::className(), ['city_id' => 'city_id']);
    }

    public function getCityName() {
        $model = $this->Cities();
        return $model ? $model->city_name : '';
    }

}
