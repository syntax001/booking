package business.entities;

public class Room {
    private int Number;
    private String roomDescription;

    public Room(int Number, String roomDescription) {
        this.Number = Number;
        this.roomDescription = roomDescription;
    }

    public int getRoomNumber() {
        return Number;
    }

    public String getRoomDescription() {
        return roomDescription;
    }

    public void setRoomNumber(int roomNumber) {
        this.Number = roomNumber;
    }

    public void setRoomDescription(String roomDescription) {
        this.roomDescription = roomDescription;
    }
}
