import 'package:flutter/material.dart';
import 'package:home_made/utilities/utilities.dart';

class CustomShopContainer extends StatefulWidget {
  final String? shopName;
  final String? url;
  final String? phoneNo;
  final String? address;
  final void Function()? onTap;
  const CustomShopContainer({
    Key? key,
    this.shopName,
    this.url,
    this.phoneNo,
    this.address,
    this.onTap,
  }) : super(key: key);

  @override
  _CustomShopContainerState createState() => _CustomShopContainerState();
}

class _CustomShopContainerState extends State<CustomShopContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 120,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorUtilities.darkSlateGreyColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                  left: 20.0,
                ),
                child: Container(
                  height: 100,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        widget.url!,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 12,
                    bottom: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                widget.shopName!,
                                style: TextStyle(
                                  color: ColorUtilities.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.favorite_outline,
                              color: ColorUtilities.primaryColor,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: ColorUtilities.shopContainerColor,
                          ),
                          Text(
                            widget.address!,
                            style: TextStyle(
                              color: ColorUtilities.shopContainerColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.call_outlined,
                              color: ColorUtilities.shopContainerColor,
                            ),
                            Text(
                              widget.phoneNo!,
                              style: TextStyle(
                                color: ColorUtilities.shopContainerColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
