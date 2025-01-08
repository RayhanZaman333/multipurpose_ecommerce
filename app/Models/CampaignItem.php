<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CampaignItem extends Model
{
    public $timestamps = false;

    // protected $fillable = ['item_id', 'status', 'is_feature'];
    protected $guarded = [];

    public function campaign()
    {
        return $this->belongsTo(Campaign::class, 'campaign_id', 'id');
    }

    public function item()
    {
        return $this->belongsTo(Item::class, 'item_id', 'id');
    }
}
