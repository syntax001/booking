package business.entities;

public class Equipment
{
    private String itemId;
    private String itemName;
    private String itemDescription;
    private int roomNumber;

    public Equipment(String itemId, String itemName, String itemDescription, int roomNumber) {
        this.itemId = itemId;
        this.itemName = itemName;
        this.itemDescription = itemDescription;
        this.roomNumber = roomNumber;
    }


    //------------GETTER------------
    public String getId() {
        return itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public String getItemDescription() {
        return itemDescription;
    }

    public int getRoomNumber() {
        return roomNumber;
    }
    //------------GETTER------------

    //------------SETTER------------

    public void setId(String itemId) {
        this.itemId = itemId;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public void setItemDescription(String itemDescription) {
        this.itemDescription = itemDescription;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

}
