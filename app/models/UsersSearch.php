<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Users;

/**
 * UsersSearch represents the model behind the search form about `app\models\Users`.
 */
class UsersSearch extends Users
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'verify', 'city_id', 'remove_or_not', 'subscribe', 'terms'], 'integer'],
            [['name', 'email', 'password_hash', 'api_key', 'status', 'created_at', 'type', 'mobile', 'lat', 'longitude', 'gender', 'location', 'experience', 'specialization', 'fees', 'consult_time', 'profile_image', 'gcm_registration_id', 'association', 'qb_id', 'address', 'description'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Users::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'created_at' => $this->created_at,
            'verify' => $this->verify,
            'city_id' => $this->city_id,
            'remove_or_not' => $this->remove_or_not,
            'subscribe' => $this->subscribe,
            'terms' => $this->terms,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'password_hash', $this->password_hash])
            ->andFilterWhere(['like', 'api_key', $this->api_key])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'type', $this->type])
            ->andFilterWhere(['like', 'mobile', $this->mobile])
            ->andFilterWhere(['like', 'lat', $this->lat])
            ->andFilterWhere(['like', 'longitude', $this->longitude])
            ->andFilterWhere(['like', 'gender', $this->gender])
            ->andFilterWhere(['like', 'location', $this->location])
            ->andFilterWhere(['like', 'experience', $this->experience])
            ->andFilterWhere(['like', 'specialization', $this->specialization])
            ->andFilterWhere(['like', 'fees', $this->fees])
            ->andFilterWhere(['like', 'consult_time', $this->consult_time])
            ->andFilterWhere(['like', 'profile_image', $this->profile_image])
            ->andFilterWhere(['like', 'gcm_registration_id', $this->gcm_registration_id])
            ->andFilterWhere(['like', 'association', $this->association])
            ->andFilterWhere(['like', 'qb_id', $this->qb_id])
            ->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'description', $this->description]);

        return $dataProvider;
    }
}
