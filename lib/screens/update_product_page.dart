import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/category_model.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_fied.dart';

class UpdateProduct extends StatefulWidget {
  UpdateProduct({super.key});
  static String id = 'update product';

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  String? title, desc, img;

  String? price;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    bool isLoading = false;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Update Product",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 120),
                TextFieldWidget(
                  onchange: (data) {
                    title = data;
                  },
                  hintText: "Enter The Product Name",
                  labelText: "Product Name",
                ),
                SizedBox(height: 10),
                TextFieldWidget(
                  onchange: (data) {
                    desc = data;
                  },
                  hintText: "Enter The description ",
                  labelText: "description Name",
                ),
                SizedBox(height: 10),

                TextFieldWidget(
                  hintText: "Enter The Price ",
                  labelText: "Price",
                  boardType: TextInputType.number,
                  onchange: (data) {
                    price = data;
                  },
                ),
                SizedBox(height: 10),

                TextFieldWidget(
                  hintText: "Enter The Image ",
                  labelText: "Image",
                ),
                SizedBox(height: 30),
                ElevatedButtonWidget(
                  onpressed: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await update(product);
                      print("Success");
                    } on Exception catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                  textbutt: "Update",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> update(ProductModel product) async {
    await UpdateService().updateProduct(
      id: product.id,
      title: title == null ? product.title : title!,
      price: price == null ? product.price.toString() : price!,
      description: desc == null ? product.description : desc!,
      image: img == null ? product.image : img!,
      category: product.category,
    );
  }
}
