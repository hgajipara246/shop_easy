import 'package:flutter/material.dart';
import 'package:shop_easy/screens/addnewcard.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  List paymentsList = [
    "assets/images/backgrounds/visa_payment.jpg",
    "assets/images/backgrounds/rupee_payment.jpg",
  ];
  List paymentsLogoList = [
    "assets/icons/visa_card_logo.png",
    "assets/icons/master_card_logo.png",
  ];
  List cardHolderName = [
    "Dolores Chambers",
    "Pedro Huard",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Color(0xFF1E1E1E),
        ),
        title: Text(
          "Payment Methods",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            fontSize: 20,
            color: Color(0xFF1E1E1E),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (context, index) => index == 2
                    ? Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0xFFD3D3D3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const AddNewCard(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 323,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Add a new card",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: Color(0xFF1E1E1E),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Icon(Icons.add),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: Stack(
                            children: [
                              Image.asset(
                                paymentsList[index],
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  height: 55,
                                  width: 323,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(18),
                                      bottomLeft: Radius.circular(18),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          cardHolderName[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xFF1E1E1E),
                                          ),
                                        ),
                                        Text(
                                          "09/24",
                                          style: TextStyle(
                                            fontFamily: "WorkSans",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xFF1E1E1E),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                bottom: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      paymentsLogoList[index],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "**** **** **** 8283",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                        fontSize: 15,
                                        color: Color(0xFF1E1E1E),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
