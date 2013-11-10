using UnityEngine;
using System.Collections;

public class StationBurner : MonoBehaviour {

    public bool Destroyer;
	// Use this for initialization
	void Start () {
        Destroyer = false;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    public bool GetDestroyer()
    {
        return Destroyer;
    }
}
