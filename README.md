https://laravelvoyager.com/

Install debugbar
```bash
$ composer require barryvdh/laravel-debugbar --dev

```
Make authenticate
```bash
$ php artisan make:auth
```

Unit test
```bash
$ phpunit --coverage-html=results/phpunit/covegare tests
```

laravel-phpinfo
```bash
$ composer require jeremykenedy/laravel-phpinfo
```

https://laravel-news.com/laravel-5-4-key-too-long-error
```php
use Illuminate\Support\Facades\Schema;

public function boot()
{
    Schema::defaultStringLength(191);
}
```


Create Tables: product, product_category, product_category_relation
```bash
# define schema
# products
$ php artisan make:model Product --migration --factory
$ php artisan make:seeder ProductTableSeeder
$ php artisan migrate
$ php artisan db:seed --class=ProductTableSeeder

# product_categories
$ php artisan make:model ProductCategory --migration --factory
$ php artisan make:seeder ProductCategoryTableSeeder
$ php artisan migrate
$ php artisan db:seed --class=ProductCategoryTableSeeder

# product_category_relations
$ php artisan make:model ProductCategoryRelation --migration --factory
$ php artisan make:seeder ProductCategoryRelationTableSeeder
$ php artisan migrate
$ php artisan db:seed --class=ProductCategoryRelationTableSeeder

```
additional field options
json type, image, text, dropdown,...
https://voyager.readme.io/docs/additional-field-options

relationships many to many in BREAD in admin
 - product relationship: https://prnt.sc/m2rmj7
 - color json data list: https://prnt.sc/m2rs23

check in tinker
```php
$p = App\Product::find(1);
$p->categories;
```

setup at new environment
```bash
$ composer install
$ cp .env.example .env
# update info config to DB
# #check connect to DB by tinker
$ php artisan tinker
    #DB::connection()->getPdo()
$ php artisan voyager:install --with-dummy
$ php artisan key:generate
```
Composer script
[guide](https://getcomposer.org/doc/articles/scripts.md)
```bash
$ /c/xampp/php/php.exe ~/composer.phar run-script test
```
overriding views
https://www.youtube.com/watch?v=H5zj-bdXa_w

```bash
#make migration with existed model
$ php artisan make:migration create_products_table
$ php artisan migrate
# if need rollback last step
$ php artisan migrate:rollback --step=1
```
