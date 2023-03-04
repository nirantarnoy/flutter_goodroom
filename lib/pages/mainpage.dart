import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui/widgets/my_button.dart';
import 'package:flutter_wallet_ui/widgets/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.blue[300],
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.blue[300],
                size: 32,
              ),
            ),
          ]),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          // appbar
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'My',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Room',
                      style: TextStyle(fontSize: 28),
                    )
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                    child: Icon(Icons.list)),
              ],
            ),
          ),
          //cards
          SizedBox(
            height: 25,
          ),
          Container(
            height: 200,
            child: PageView(
              controller: _pagecontroller,
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  title: 'รอบการชำระปัจจุบัน',
                  balance: 5020.50,
                  card_no: 'โปรดชำระภายในวันที่',
                  expired_date: '01/04/2023',
                  color: Colors.deepPurple[400],
                ),
                MyCard(
                  title: 'รายการชำระล่าสุด',
                  balance: 690.89,
                  card_no: 'ชำระวันที่',
                  expired_date: '05/02/2023',
                  color: Colors.blue[400],
                ),
                // MyCard(
                //   balance: 120.20,
                //   card_no: '0987654321',
                //   expired_date: '01/26',
                //   color: Colors.deepOrange[400],
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _pagecontroller,
            count: 2,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),

          SizedBox(
            height: 25,
          ),
          // 3 buttons

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(imgbutton: 'send-money.png', textbutton: 'ชำระค่าห้อง'),
              MyButton(imgbutton: 'invoice.png', textbutton: 'แจ้งชำระ'),
              MyButton(
                  imgbutton: 'problem-solved.png', textbutton: 'แจ้งปัญหา'),
            ],
          ),
          SizedBox(
            height: 25,
          ),

          //column ->stat + transaction

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  height: 80,
                                  child: Image.asset('assets/icons/growth.png'),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Transaction History',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'ประวัติการชำระค่าห้อง',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  height: 80,
                                  child: Image.asset('assets/icons/list.png'),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Problem information',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'ประวัติการแจ้งปัญหา',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
