using UnityEngine;
using System.Collections;

public class FoodInertiaScript : MonoBehaviour {
    Vector3 inertia;
    void Awake()
    {
           inertia.x= 1;
            inertia.y=  1;
            inertia.z = inertia.x;
            rigidbody.inertiaTensor = inertia;
    }
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
