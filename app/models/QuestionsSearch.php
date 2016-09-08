<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Questions;

/**
 * QuestionsSearch represents the model behind the search form about `app\models\Questions`.
 */
class QuestionsSearch extends Questions
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'cat_id', 'u_id', 'views', 'viewer_id', 'anonymous'], 'integer'],
            [['point', 'question', 'created_on'], 'safe'],
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
        $query = Questions::find();

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
            'cat_id' => $this->cat_id,
            'u_id' => $this->u_id,
            'views' => $this->views,
            'viewer_id' => $this->viewer_id,
            'anonymous' => $this->anonymous,
            'created_on' => $this->created_on,
        ]);

        $query->andFilterWhere(['like', 'point', $this->point])
            ->andFilterWhere(['like', 'question', $this->question]);

        return $dataProvider;
    }
}
