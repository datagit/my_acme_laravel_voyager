<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    public function categories(){
        return $this->belongsToMany(ProductCategory::class, 'product_category_relations');
    }
}
