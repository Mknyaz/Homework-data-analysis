/*
 Написать запрос, который выводит общее число тегов
*/
db.tags.count()

print('tags count: ', 'расчёт количества тегов');
/*
        Добавляем фильтрацию: считаем только количество фильмов с тегом Adventure
*/
db.tags.count({ "tag_name": 'Adventure' })

print('Adventure" tags count: ', 'расчёт количества тегов "Adventure"');
/*
        Очень сложный запрос: используем группировку данных посчитать количество вхождений для каждого тега
        и напечатать top-3 самых популярных
*/

printjson(
        db.tags.aggregate([
                {"$group": {
                                _id: "$tag_id",
                                total_sum: { $sum: 1 }
                           }
                },
                {$sort: {total_sum: -1}},
                {$limit: 3}
        ])['_batch']
);
db.tags.aggregate([{$group: {_id: "$tag_id", tag_count: { $sum: 1 }}},{$sort: {tag_count: -1}},{$limit: 3}])
