using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BlockParty : MonoBehaviour
{

    public Sprite rashadProfile;
    public Sprite rashadPic1;
    public Sprite rashadPic2;
    public Sprite rashadPic3;

    public Sprite elisaProfile;
    public Sprite elisaPic1;
    public Sprite elisaPic2;
    public Sprite elisaPic3;

    public Sprite msleeProfile;
    public Sprite msleePic1;
    public Sprite msleePic2;
    public Sprite msleePic3;

    public Sprite calindasProfile;
    public Sprite calindasPic1;
    public Sprite calindasPic2;
    public Sprite calindasPic3;

    public Sprite lilaProfile;
    public Sprite lilaPic1;
    public Sprite lilaPic2;
    public Sprite lilaPic3;

    public Image pic1;
    public Image pic2;
    public Image pic3;
    public Image profilePic;

    public Text nametagText;
    public Text paragraphText;

    private string funText = " had so much fun at the block party this week! Are you ready for the next week?";

    // Start is called before the first frame update
   void Start()
    {
        fillDetails(CharacterResources.CHARACTERS.LILA);
    }

    // Configures who shows up for the block party screen
    public void fillDetails(CharacterResources.CHARACTERS c)
    {
        switch(c)
        {
            case CharacterResources.CHARACTERS.CALINDAS:
                pic1.sprite = calindasPic1;
                pic2.sprite = calindasPic2;
                pic3.sprite = calindasPic3;
                profilePic.sprite = calindasProfile;
                break;
            case CharacterResources.CHARACTERS.ELISA:
                pic1.sprite = elisaPic1;
                pic2.sprite = elisaPic2;
                pic3.sprite = elisaPic3;
                profilePic.sprite = elisaProfile;
                break;
            case CharacterResources.CHARACTERS.LEE:
                pic1.sprite = msleePic1;
                pic2.sprite = msleePic2;
                pic3.sprite = msleePic3;
                profilePic.sprite = msleeProfile;
                break;
            case CharacterResources.CHARACTERS.RASHAD:
                pic1.sprite = rashadPic1;
                pic2.sprite = rashadPic2;
                pic3.sprite = rashadPic3;
                profilePic.sprite = rashadProfile;
                break;
            case CharacterResources.CHARACTERS.LILA:
                pic1.sprite = lilaPic1;
                pic2.sprite = lilaPic2;
                pic3.sprite = lilaPic3;
                profilePic.sprite = lilaProfile;
                break;
        }
        nametagText.text = CharacterResources.GetName(c);
        paragraphText.text = CharacterResources.GetName(c) + funText;
    }
}
