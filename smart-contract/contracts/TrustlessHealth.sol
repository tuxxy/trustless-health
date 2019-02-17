pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract TrustlessHealth {

    address public owner;
    string[] public categories;
    receipt[] public receipts;
    mapping(uint => analysisOffering[]) public analysisOfferings;

    struct analysisOffering {
        string host;
        address payable paymentAddress;
        uint price;
        uint categoryId;
        string title;
        string description;
        bool isValid;
    }

    struct receipt {
        address buyerAddress;
        uint offeringId;
    }

    event purchasedOffering(analysisOffering offering, uint offeringId, uint receiptId);

    constructor() public {
        owner = msg.sender;
    }

    function submitAnalysisOffering(string memory host, address payable paymentAddress, uint price, uint categoryId, string memory title, string memory description) public {
        require(categoryExists(categoryId));
        analysisOffering memory offering = analysisOffering(host, paymentAddress, price, categoryId, title, description, true);
        analysisOfferings[categoryId].push(offering);
    }

    function createCategory(string memory category) public {
        categories.push(category);
    }

    function categoryExists(uint categoryId) public view returns(bool) {
        return categoryId < categories.length;
    }

    function getCategories() public view returns(string[] memory) {
        return categories;
    }

    function getOfferings(uint categoryId) public view returns(analysisOffering[] memory) {
        require(categoryExists(categoryId));
        return analysisOfferings[categoryId];
    }

    function purchaseOffering(uint offeringId, uint categoryId) public payable {
        require(categoryExists(categoryId));
        analysisOffering memory offering = analysisOfferings[categoryId][offeringId];
        require(offering.isValid);
        offering.paymentAddress.transfer(offering.price);

        receipt memory purchaseReceipt = receipt(msg.sender, offeringId);
        receipts.push(purchaseReceipt);
        emit purchasedOffering(offering, offeringId, receipts.length - 1);
    }
}
