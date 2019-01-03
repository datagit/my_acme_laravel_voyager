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
