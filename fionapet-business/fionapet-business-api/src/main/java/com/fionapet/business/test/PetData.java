package com.fionapet.business.test;

import com.fionapet.business.entity.DictTypeDetail;
import com.fionapet.business.entity.Pet;
import com.fionapet.business.entity.PetSmallRace;
import com.fionapet.business.entity.UserDictDetail;

import java.util.Date;

/**
 * Created by tom on 16/7/19.
 */
public class PetData implements IData<Pet>{
    public Pet data(){
        Pet pet = new Pet();
        pet.setPetName("二哈");
        pet.setAge(2);
        pet.setDogBandId("110");
        pet.setGestId("01");
        pet.setGestCode("vip01");
        pet.setGestName("小新");
        pet.setMdicTypeName("院长");
        pet.setPetBirthday(new Date());
        pet.setPetBodyLong(10);
        pet.setPetWeight(2.5f);
        pet.setPetHeight(50);
        pet.setPetSwidth(20);
        pet.setPetCode("CP01");
        pet.setPetHead("头像");
        pet.setPetHeadId("01");

        pet.setCreateUserId(TOKEN);
        pet.setUpdateUserId(TOKEN);

        //品种
        PetSmallRace petSmallRace = DataBuilder.data(PetSmallRaceData.class);
        pet.setPetRace(petSmallRace);

        //性别
        UserDictDetail userDictDetail = DataBuilder.data(UserDictDetailData.class);
        pet.setPetSex(userDictDetail);

        //颜色
        pet.setPetSkinColor(userDictDetail);

        return pet;
    }
}
