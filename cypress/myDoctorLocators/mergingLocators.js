import loginPageLocators from '../myDoctorLocators/myDoctorLoginLocators.json';
import registrationPageLocators from "../myDoctorLocators/myDoctorRegisterationLocator.json";
import searchbarPageLocators from "../myDoctorLocators/myDoctorSearchbarlocator.json";
import dashboardPageLocators from "../myDoctorLocators/dashboard.json";
import doctorAppointmentPageLocators from "../myDoctorLocators/doctorAppoinment.json" ;
import doctorProfilePage from "../myDoctorLocators/doctorProfilePage.json";
const mergeObject = {
    ...loginPageLocators,
    ...registrationPageLocators,
    ...searchbarPageLocators,
    ...dashboardPageLocators,
    ...doctorAppointmentPageLocators,
    ...doctorProfilePage
}

class Loctors {

    getLoctors(string){
          return mergeObject[string];
    }

}

export default Loctors;










