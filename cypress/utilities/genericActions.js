class GenericActions {

    visit(){
        cy.visit("/");
    }

    wait(time){
        cy.wait(time).then(function(){
            cy.log('Wait for' + time);
        })
    }

    checkUrl(url){
        cy.url().should('contains', url).then( function(){
            cy.log("--> Successs: Current url contains the expected url")
        }),function(err){
            cy.log("---> Error: The url contains:" + url + "does not include the current url due to: " + err);
        };
    }

   refresh() {
        cy.reload().then(function () {
            cy.log("--->Success: The page got refreshed");
        }, function (err) {
            cy.log("--->Error: The page: " + browser.getCurrentUrl() + " is not refreshed due to: " + err);
        });
    }


    setScrollPageDown() {
        cy.scrollTo(0, 800).then(function () {
            cy.get('.sidebar').scrollTo('bottom')
            cy.log('++++++SCROLLED Down+++++');
        });
    }


    getTitle() {
        cy.title().then(function (text) {
            cy.log("--->Success: The title of of the Webpage is captured: " + text);
            return text;
        }, function (err) {
            cy.log("--->Error: The title of of the Webpage is not captured: due to: " + err);
        });

    }
    
    clearCookies() {
        try {
            cy.clearCookies();

        }
        catch (err) {
            cy.log("The Failed To clear the Catch Data");
        }

    }

    getUnixTimeStamp() {

        var formattedTime = Math.round((new Date()).getTime() / 1000);
        return formattedTime;
    }

    utf8_decode(utftext) {

        var string = "";
        var i = 0;
        var c, c1, c2;
        while (i < utftext.length) {

            c = utftext.charCodeAt(i);

            if (c < 128) {
                string += String.fromCharCode(c);
                i++;
            } else if ((c > 191) && (c < 224)) {
                c2 = utftext.charCodeAt(i + 1);
                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
                i += 2;
            } else {
                c2 = utftext.charCodeAt(i + 1);
                c3 = utftext.charCodeAt(i + 2);
                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
                i += 3;
            }

        }

        return string;

    }

    generateEmailAddresss() {
        var chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        var string = '';
        var email = '';
        var randomnumber = Math.floor(Math.random() * 90000) + 100000;
        for (var i = 0; i < 15; i++)
            string = chars[Math.floor(Math.random() * chars.length)];
        email = string + +randomnumber + '@gmail.com'
        localStorage.setItem("Email id",email);
        return email;
    }

    generateMobileNumber(){
        var num = "0123456789";
        var mobileNumber = 9;
        for (var i= 0;i <= 9;i++){
            mobileNumber += num.charAt(Math.floor(Math.random() * num.length))
        }
        localStorage.setItem("Phone Number",mobileNumber)

        return mobileNumber;
    }


    base64Decode(input) {

        var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
        var output = "";
        var chr1, chr2, chr3;
        var enc1, enc2, enc3, enc4;
        var i = 0;

        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");

        while (i < input.length) {

            enc1 = keyStr.indexOf(input.charAt(i++));
            enc2 = keyStr.indexOf(input.charAt(i++));
            enc3 = keyStr.indexOf(input.charAt(i++));
            enc4 = keyStr.indexOf(input.charAt(i++));

            chr1 = (enc1 << 2) | (enc2 >> 4);
            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
            chr3 = ((enc3 & 3) << 6) | enc4;

            output = output + String.fromCharCode(chr1);

            if (enc3 !== 64) {
                output = output + String.fromCharCode(chr2);
            }
            if (enc4 !== 64) {
                output = output + String.fromCharCode(chr3);
            }

        }

        output = this.utf8_decode(output);
        return output;

    }

}
export default GenericActions;