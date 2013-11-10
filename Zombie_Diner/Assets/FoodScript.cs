using UnityEngine;
using System.Collections;

public class FoodScript : MonoBehaviour {

    public bool dragged;
    public bool buttup;
    public StationBurner otherStation;
    public string name;


    Ray ray;
    RaycastHit hit;

	// Use this for initialization
	void Start () {
        dragged = false;
        otherStation = null;
        buttup = false;
       
	}
	
	// Update is called once per frame
	void Update () {
        if (dragged)
        {

            ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out hit))
            {
                Vector3 newPoint = new Vector3(hit.point.x, hit.point.y,  -2.0597f);
                transform.position = newPoint;
            }          
        }
        if (otherStation && !dragged)
        {
            Debug.Log("HIHI");
            if (otherStation.GetDestroyer())
            {
                Destroy(gameObject);
            }
            else
                Destroy(this);
        }
      

        //Debug.Log(Input.mousePosition.ToString());*/
	}

    void OnMouseOver()
    {
        
        if (!dragged && Input.GetMouseButtonDown(0))
        {
            dragged = true;
            buttup = false;
            Debug.Log("Oy!");
        }
        
    }

    void OnMouseUp()
    {
        Debug.Log("Oy!Whatup!");
        if(Input.GetMouseButtonUp(0) && buttup == true)
                dragged = false;
            else if (Input.GetMouseButtonUp(0) && buttup == false)
                buttup = true;
    }

    void OnTriggerEnter(Collider col)
    {
        Debug.Log("Hi");
        if (col.gameObject.tag == "Station")
        {
            Debug.Log("Landing!");
            dragged = false;
            otherStation = col.gameObject.GetComponent<StationBurner>();
        }
    }
    
}
