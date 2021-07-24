package business.entities;

public class Equipment
{
    private String id;
    private String item_name;
    private String item_description;

    public Equipment(String id, String item_name, String item_description) {
        this.id = id;
        this.item_name = item_name;
        this.item_description = item_description;
    }

    public String getId()
    {
        return id;
    }

    public void setId(String id)
    {
        this.id = id;
    }

}
