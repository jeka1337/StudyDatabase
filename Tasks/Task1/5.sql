--5.	Показать только те ID фотографии товара (ProductPhotoID) и названия файлов, содержащие
--миниатюру фотографии товара (ThumbnailPhotoFileName) из таблицы Production.ProductPhoto, 
--у которых в поле ThumbnailPhotoFileName содержится значение «черный» ('black').
SELECT ProductPhotoID, ThumbnailPhotoFileName
FROM Production.ProductPhoto
WHERE ThumbnailPhotoFileName LIKE '%black%'