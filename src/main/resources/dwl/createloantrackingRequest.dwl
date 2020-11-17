%dw 2.0
output application/xml
ns ns0 http://www.symxchange.generated.symitar.com/v2/account
ns soapenv http://schemas.xmlsoap.org/soap/envelope/
ns com http://www.symxchange.generated.symitar.com/v1/common/dto/common
ns xsi http://www.w3.org/2001/XMLSchema-instance
import * from dw::core::Strings
fun formatDate(localTime: DateTime) = localTime as String{format: "MM/dd/yyyy"}

fun spaceSplit(string) = trim (string) scan /([\w].{0,39})(?:\s|$)/

fun phoneNumberFormat(number: String) = number[0 to 2] ++ "-" ++ number[3 to 5] ++ "-" ++ number[6 to 9]

fun ZipFormat(number: String) = number[0 to 4] ++ "-" ++ number[5 to 8]
fun ZipFormat1(number: String) = number[0 to 4] ++ "-" ++ number[5]
fun ZipFormat2(number: String) = number[0 to 4] ++ "-" ++ number[5 to 6]
fun ZipFormat3(number: String) = number[0 to 4] ++ "-" ++ number[5 to 7]

---

{
	soapenv#Envelope:{
		soapenv#Header:{},
		soapenv#Body:{
	ns0#createLoanTracking: {
		Request @("MessageId":"LoanTracking"): {
			LoanTrackingCreatableFields: {
				ExpireDate @(xsi#nil:if(vars.ParamArray.ExpireDate == null)("true") else (false)): vars.ParamArray.ExpireDate,
				Type: vars.ParamArray.Type,
                UserAmount1: vars.ParamArray.UserAmount1,
                UserAmount10: vars.ParamArray.UserAmount10,
                UserAmount11: vars.ParamArray.UserAmount11,
                UserAmount12: vars.ParamArray.UserAmount12,
                UserAmount13: vars.ParamArray.UserAmount13,
                UserAmount14: vars.ParamArray.UserAmount14,
                UserAmount15: vars.ParamArray.UserAmount15,
                UserAmount16: vars.ParamArray.UserAmount16,
                UserAmount17: vars.ParamArray.UserAmount17,
                UserAmount18: vars.ParamArray.UserAmount18,
                UserAmount19: vars.ParamArray.UserAmount19,
                UserAmount2: vars.ParamArray.UserAmount2,
                UserAmount20: vars.ParamArray.UserAmount20,
                UserAmount3: vars.ParamArray.UserAmount3,
                UserAmount4: vars.ParamArray.UserAmount4,
                UserAmount5: vars.ParamArray.UserAmount5,
                UserAmount6: vars.ParamArray.UserAmount6,
                UserAmount7: vars.ParamArray.UserAmount7,
                UserAmount8: vars.ParamArray.UserAmount8,
                UserAmount9: vars.ParamArray.UserAmount9,  
                UserChar1: vars.ParamArray.UserChar1,
                UserChar10: vars.ParamArray.UserChar10,
                UserChar11: vars.ParamArray.UserChar11,
                UserChar12: vars.ParamArray.UserChar12,
                UserChar13: vars.ParamArray.UserChar13,
                UserChar14: if(!isEmpty(vars.ParamArray.UserChar14)) vars.ParamArray.UserChar14 else '',
                UserChar15: vars.ParamArray.UserChar15,
                UserChar16: vars.ParamArray.UserChar16,
                UserChar17: vars.ParamArray.UserChar17,
                UserChar18: vars.ParamArray.UserChar18,
                UserChar19: vars.ParamArray.UserChar19,
                UserChar2: vars.ParamArray.UserChar2,
                UserChar20: vars.ParamArray.UserChar20,
                UserChar3: vars.ParamArray.UserChar3,
                UserChar4: vars.ParamArray.UserChar4,
                UserChar5: vars.ParamArray.UserChar5,
                UserChar6: vars.ParamArray.UserChar6,
                UserChar7: vars.ParamArray.UserChar7,
                UserChar8: vars.ParamArray.UserChar8,
                UserChar9: vars.ParamArray.UserChar9, 
                UserCode1: vars.ParamArray.UserCode1,
                UserCode10: vars.ParamArray.UserCode10,
                UserCode11: vars.ParamArray.UserCode11,
                UserCode12: vars.ParamArray.UserCode12,
                UserCode13: vars.ParamArray.UserCode13,
                UserCode14: vars.ParamArray.UserCode14,
                UserCode15: vars.ParamArray.UserCode15,
                UserCode16: vars.ParamArray.UserCode16,
                UserCode17: vars.ParamArray.UserCode17,
                UserCode18: vars.ParamArray.UserCode18,
                UserCode19: vars.ParamArray.UserCode19,
                UserCode2: vars.ParamArray.UserCode2,
                UserCode20: vars.ParamArray.UserCode20,
                UserCode3: vars.ParamArray.UserCode3,
                UserCode4: vars.ParamArray.UserCode4,
                UserCode5: vars.ParamArray.UserCode5,
                UserCode6: vars.ParamArray.UserCode6,
                UserCode7: vars.ParamArray.UserCode7,
                UserCode8: vars.ParamArray.UserCode8,
                UserCode9: vars.ParamArray.UserCode9,
				UserDate1 @(xsi#nil:if(vars.ParamArray.UserDate1 == null)("true") else (false)): vars.ParamArray.UserDate1,
				UserDate10 @(xsi#nil:if(vars.ParamArray.UserDate10 == null)("true") else (false)): vars.ParamArray.UserDate10,
				UserDate11 @(xsi#nil:if(vars.ParamArray.UserDate11 == null)("true") else (false)): vars.ParamArray.UserDate11,
				UserDate12 @(xsi#nil:if(vars.ParamArray.UserDate12 == null)("true") else (false)): vars.ParamArray.UserDate12,
				UserDate13 @(xsi#nil:if(vars.ParamArray.UserDate13 == null)("true") else (false)): vars.ParamArray.UserDate13,
				UserDate14 @(xsi#nil:if(vars.ParamArray.UserDate14 == null)("true") else (false)): vars.ParamArray.UserDate14,
				UserDate15 @(xsi#nil:if(vars.ParamArray.UserDate15 == null)("true") else (false)): vars.ParamArray.UserDate15,
				UserDate16 @(xsi#nil:if(vars.ParamArray.UserDate16 == null)("true") else (false)): vars.ParamArray.UserDate16,
				UserDate17 @(xsi#nil:if(vars.ParamArray.UserDate17 == null)("true") else (false)): vars.ParamArray.UserDate17,
				UserDate18 @(xsi#nil:if(vars.ParamArray.UserDate18 == null)("true") else (false)): vars.ParamArray.UserDate18,
				UserDate19 @(xsi#nil:if(vars.ParamArray.UserDate19 == null)("true") else (false)): vars.ParamArray.UserDate19,
				UserDate2  @(xsi#nil:if(vars.ParamArray.UserDate2 == null)("true") else (false)): vars.ParamArray.UserDate2,
				UserDate20 @(xsi#nil:if(vars.ParamArray.UserDate20 == null)("true") else (false)): vars.ParamArray.UserDate20,
				UserDate3 @(xsi#nil:if(vars.ParamArray.UserDate3 == null)("true") else (false)): vars.ParamArray.UserDate3,
				UserDate4 @(xsi#nil:if(vars.ParamArray.UserDate4 == null)("true") else (false)): vars.ParamArray.UserDate4,
				UserDate5 @(xsi#nil:if(vars.ParamArray.UserDate5 == null)("true") else (false)): vars.ParamArray.UserDate5,
				UserDate6 @(xsi#nil:if(vars.ParamArray.UserDate6 == null)("true") else (false)): vars.ParamArray.UserDate6,
				UserDate7 @(xsi#nil:if(vars.ParamArray.UserDate7 == null)("true") else (false)): vars.ParamArray.UserDate7,
				UserDate8 @(xsi#nil:if(vars.ParamArray.UserDate8 == null)("true") else (false)): vars.ParamArray.UserDate8,
				UserDate9 @(xsi#nil:if(vars.ParamArray.UserDate9 == null)("true") else (false)): vars.ParamArray.UserDate9,
                UserId: vars.ParamArray.UserId,  
                UserNumber1: vars.ParamArray.UserNumber1,
                UserNumber10: vars.ParamArray.UserNumber10,
                UserNumber11: vars.ParamArray.UserNumber11,
                UserNumber12: vars.ParamArray.UserNumber12,
                UserNumber13: vars.ParamArray.UserNumber13,
                UserNumber14: vars.ParamArray.UserNumber14,
                UserNumber15: vars.ParamArray.UserNumber15,
                UserNumber16: vars.ParamArray.UserNumber16,
                UserNumber17: vars.ParamArray.UserNumber17,
                UserNumber18: vars.ParamArray.UserNumber18,
                UserNumber19: vars.ParamArray.UserNumber19,
                UserNumber2: vars.ParamArray.UserNumber2,
                UserNumber20: vars.ParamArray.UserNumber20,
                UserNumber3: vars.ParamArray.UserNumber3,
                UserNumber4: vars.ParamArray.UserNumber4,
                UserNumber5: vars.ParamArray.UserNumber5,
                UserNumber6: vars.ParamArray.UserNumber6,
                UserNumber7: vars.ParamArray.UserNumber7,
                UserNumber8: vars.ParamArray.UserNumber8,
                UserNumber9: vars.ParamArray.UserNumber9,  
                UserRate1: vars.ParamArray.UserRate1,
                UserRate10: vars.ParamArray.UserRate10,
                UserRate11: vars.ParamArray.UserRate11,
                UserRate12: vars.ParamArray.UserRate12,
                UserRate13: vars.ParamArray.UserRate13,
                UserRate14: vars.ParamArray.UserRate14,
                UserRate15: vars.ParamArray.UserRate15,
                UserRate16: vars.ParamArray.UserRate16,
                UserRate17: vars.ParamArray.UserRate17,
                UserRate18: vars.ParamArray.UserRate18,
                UserRate19: vars.ParamArray.UserRate19,
                UserRate2: vars.ParamArray.UserRate2,
                UserRate20: vars.ParamArray.UserRate20,
                UserRate3: vars.ParamArray.UserRate3,
                UserRate4: vars.ParamArray.UserRate4,
                UserRate5: vars.ParamArray.UserRate5,
                UserRate6: vars.ParamArray.UserRate6,
                UserRate7: vars.ParamArray.UserRate7,
                UserRate8: vars.ParamArray.UserRate8,
                UserRate9: vars.ParamArray.UserRate9,
            },
			    AccountNumber: vars.ParamArray.AccountNumber,    
			    LoanId: vars.ParamArray.LoanId,              
			Credentials: {
			AdministrativeCredentials: {
			Password: p('secure::DeviceInformation.Password')
			}
			},
			DeviceInformation @(DeviceType: p('secure::DeviceInformation.DeviceType'), DeviceNumber: p('secure::DeviceInformation.DeviceNumber')): null
			
			
		}
	  }
	 }
	}
}