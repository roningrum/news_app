import 'package:news_app/data/categories_model.dart';

List<CategoriesModel> getCategories(){
  List <CategoriesModel> myCategories = [];
  CategoriesModel categoriesModel;

  //1
  categoriesModel = new CategoriesModel();
  categoriesModel.categorieName = "Business";
  categoriesModel.imageAssetUrl = 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoriesModel);

  //2
  categoriesModel = new CategoriesModel();
  categoriesModel.categorieName = "Entertainment";
  categoriesModel.imageAssetUrl = "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoriesModel);

  //3
  categoriesModel = new CategoriesModel();
  categoriesModel.categorieName = "General";
  categoriesModel.imageAssetUrl = "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  myCategories.add(categoriesModel);

  //4
  categoriesModel = new CategoriesModel();
  categoriesModel.categorieName = "Health";
  categoriesModel.imageAssetUrl = "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoriesModel);

  //5
  categoriesModel = new CategoriesModel();
  categoriesModel.categorieName = "Science";
  categoriesModel.imageAssetUrl = "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  myCategories.add(categoriesModel);

  //6
  categoriesModel = new CategoriesModel();
  categoriesModel.categorieName = "Sports";
  categoriesModel.imageAssetUrl = "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoriesModel);

  //7
  categoriesModel = new CategoriesModel();
  categoriesModel.categorieName = "Technology";
  categoriesModel.imageAssetUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoriesModel);

  return myCategories;
}