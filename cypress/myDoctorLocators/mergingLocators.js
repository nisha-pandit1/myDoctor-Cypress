import loginPageLocators from '../myDoctorLocators/myDoctorLoginLocators.json';
import registrationPageLocators from "../myDoctorLocators/myDoctorRegisterationLocator.json";
import searchbarPageLocators from "../myDoctorLocators/myDoctorSearchbarlocator.json";

const mergeObject = {
    ...loginPageLocators,
    ...registrationPageLocators,
    ...searchbarPageLocators
}

class Loctors {

    getLoctors(string){
          return mergeObject[string];
    }

}

export default Loctors;










