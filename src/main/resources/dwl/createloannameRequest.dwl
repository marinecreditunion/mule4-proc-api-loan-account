%dw 2.0
output application/xml
ns ns0 http://www.symxchange.generated.symitar.com/v2/account
ns soapenv http://schemas.xmlsoap.org/soap/envelope/
ns com http://www.symxchange.generated.symitar.com/v1/common/dto/common
ns xsi http://www.w3.org/2001/XMLSchema-instance
import * from dw::core::Strings
fun formatDate(localTime: DateTime) = localTime as String{format: "MM/dd/yyyy"}
fun spaceSplit
(string) = trim (string) scan /([\w].{0,39})(?:\s|$)/

//Ssn Custom lookup	
fun lookupSsn(code) = if(code == 8)('0') else if(code == 7)('00') else if(code == 6)('000') else if(code ==5)('0000') else(code)
//Mobilephone/Homephone lookup
fun phoneNumberFormat
(number: String) = number[0 to 2] ++ "-" ++ number[3 to 5] ++ "-" ++ number[6 to 9]

//ZipCode Format
fun ZipFormat
(number: String) = number[0 to 4] ++ "-" ++ number[5 to 8]
fun ZipFormat1
(number: String) = number[0 to 4] ++ "-" ++ number[5]
fun ZipFormat2
(number: String) = number[0 to 4] ++ "-" ++ number[5 to 6]
fun ZipFormat3
(number: String) = number[0 to 4] ++ "-" ++ number[5 to 7]

//address
fun lookupExtraAddress(ExtraAddress) = if((sizeOf(ExtraAddress)) > 40)(ExtraAddress[40 to ((sizeOf(ExtraAddress))-39)]) else null
---
{
	soapenv#Envelope: {
		soapenv#Header: {
		},
		soapenv#Body: {
			ns0#createLoanName: {
				Request @("MessageId":"CreateLoanNameRecord"): {
					LoanNameCreatableFields: {
						AddrExpDate @(xsi#nil:if(vars.ParamArray.AddrExpDate == null)("true") else (false)): vars.ParamArray.AddrExpDate,
						AddressType: vars.ParamArray.AddressType default 0,
						AltEmail: vars.ParamArray.AltEmail default '',
						BirthDate @(xsi#nil:if(vars.ParamArray.BirthDate == null)("true") else (false)): vars.ParamArray.BirthDate,
						City: upper(vars.ParamArray.City) default '',
						Country: upper(vars.ParamArray.Country) default '',
						CountryCode: vars.ParamArray.CountryCode default '',
						CtrExempt: vars.ParamArray.CtrExempt default 0,
						CurrGrossMonthPay:  if (!isEmpty(vars.ParamArray.CurrGrossMonthPay)) vars.ParamArray.CurrGrossMonthPay as Number as String{format: "#########.00"} else 0.00 default 0.00,
						CurrNetMonthPay: if (!isEmpty(vars.ParamArray.CurrNetMonthPay)) vars.ParamArray.CurrNetMonthPay as Number as String{format: "#########.00"} else 0.00 default 0.00,
						DbaExtendedName: upper(vars.ParamArray.DbaExtendedName) default '',
						DbaFirst: upper(vars.ParamArray.DbaFirst) default '',
						DbaLast: upper(vars.ParamArray.DbaLast) default '',
						DbaMiddle: upper(vars.ParamArray.DbaMiddle) default '',
						DbaNameFormat: vars.ParamArray.DbaNameFormat default 0,
						DbaSuffix: upper(vars.ParamArray.DbaSuffix) default '',
						DbaTitle: upper(vars.ParamArray.DbaTitle) default '',
						DeathDate @(xsi#nil:if(vars.ParamArray.DeathDate == null)("true") else (false)): vars.ParamArray.DeathDate,
						EffectiveDate @(xsi#nil:if(vars.ParamArray.EffectiveDate == null)("true") else (false)): vars.ParamArray.EffectiveDate,
						Email: vars.ParamArray.Email default '',
						EmployerName: upper(vars.ParamArray.EmployerName) default '',
						ExpirationDate @(xsi#nil:if(vars.ParamArray.ExpirationDate == null)("true") else (false)): vars.ParamArray.ExpirationDate,
						ExtendedName: upper(vars.ParamArray.ExtendedName) default '',
						ExtraAddress: if(vars.varAddressSplit.ExtraAddress != null) (vars.varAddressSplit.ExtraAddress) else if(vars.varAddressSplitWithLength.ExtraAddress != null) (vars.varAddressSplitWithLength.ExtraAddress) else (vars.ParamArray.ExtraAddress) default '',
						//ExtraAddress: if(vars.varAddressSplit.ExtraAddress != null) (vars.varAddressSplit.ExtraAddress) else (vars.ParamArray.ExtraAddress) default '',						
						ExtraInfo: vars.ParamArray.ExtraInfo default '',
						First: upper(vars.ParamArray.First) default '',
						ForeignTin: vars.ParamArray.ForeignTin default '',
						FormW8OnFile: vars.ParamArray.FormW8OnFile default 0,
                        HomePhone: if(vars.ParamArray.HomePhone != null and vars.ParamArray.HomePhone != '' )(if(vars.ParamArray.HomePhone contains("-"))(vars.ParamArray.HomePhone) else (phoneNumberFormat(vars.ParamArray.HomePhone))) else null,
						IdentDocFlag: {
							EntryId: 1,
							IdentDocFlag: vars.ParamArray.IdentDocFlag1 default 0
						},
						IdentDocFlag: {
							EntryId: 2,
							IdentDocFlag: vars.ParamArray.IdentDocFlag2 default 0
						},
						IdentDocFlag: {
							EntryId: 3,
							IdentDocFlag: vars.ParamArray.IdentDocFlag3 default 0
						},
						IdentIdDescription: {
							EntryId: 1,
							IdentIdDescription: vars.ParamArray.IdentIdDescription1 default ''
						},
						IdentIdDescription: {
							EntryId: 2,
							IdentIdDescription: vars.ParamArray.IdentIdDescription2 default ''
						},
						IdentIdDescription: {
							EntryId: 3,
							IdentIdDescription: vars.ParamArray.IdentIdDescription3 default ''
						},
						IdentIdExpireDate: {
							EntryId: 1,
							IdentIdExpireDate @(xsi#nil:if(vars.ParamArray.IdentIdExpireDate1 == null)("true") else (false)): vars.ParamArray.IdentIdExpireDate1
						},
						IdentIdExpireDate: {
							EntryId: 2,
							IdentIdExpireDate @(xsi#nil:if(vars.ParamArray.IdentIdExpireDate2 == null)("true") else (false)): vars.ParamArray.IdentIdExpireDate2
						},
						IdentIdExpireDate: {
							EntryId: 3,
							IdentIdExpireDate @(xsi#nil:if(vars.ParamArray.IdentIdExpireDate3 == null)("true") else (false)): vars.ParamArray.IdentIdExpireDate3
						},
						IdentIdIssueDate: {
							EntryId: 1,
							IdentIdIssueDate @(xsi#nil:if(vars.ParamArray.IdentIdIssueDate1 == null)("true") else (false)): vars.ParamArray.IdentIdIssueDate1
						},
						IdentIdIssueDate: {
							EntryId: 2,
							IdentIdIssueDate @(xsi#nil:if(vars.ParamArray.IdentIdIssueDate2 == null)("true") else (false)): vars.ParamArray.IdentIdIssueDate2
						},
						IdentIdIssueDate: {
							EntryId: 3,
							IdentIdIssueDate @(xsi#nil:if(vars.ParamArray.IdentIdIssueDate3 == null)("true") else (false)): vars.ParamArray.IdentIdIssueDate3
						},
						IdentIdNumber: {
							EntryId: 1,
							IdentIdNumber: vars.ParamArray.IdentIdNumber1 default ''
						},
						IdentIdNumber: {
							EntryId: 2,
							IdentIdNumber: vars.ParamArray.IdentIdNumber2 default ''
						},
						IdentIdNumber: {
							EntryId: 3,
							IdentIdNumber: vars.ParamArray.IdentIdNumber3 default ''
						},
						IdentIdType: {
							EntryId: 1,
							IdentIdType: vars.ParamArray.IdentIdType1 default 0
						},
						IdentIdType: {
							EntryId: 2,
							IdentIdType: vars.ParamArray.IdentIdType2 default 0
						},
						IdentIdType: {
							EntryId: 3,
							IdentIdType: vars.ParamArray.IdentIdType3 default 0
						},
						IdentIdVerifyDate: {
							EntryId: 1,
							IdentIdVerifyDate @(xsi#nil:if(vars.ParamArray.IdentIdVerifyDate1 == null)("true") else (false)): vars.ParamArray.IdentIdVerifyDate1
						},
						IdentIdVerifyDate: {
							EntryId: 2,
							IdentIdVerifyDate @(xsi#nil:if(vars.ParamArray.IdentIdVerifyDate2 == null)("true") else (false)): vars.ParamArray.IdentIdVerifyDate2
						},
						IdentIdVerifyDate: {
							EntryId: 3,
							IdentIdVerifyDate @(xsi#nil:if(vars.ParamArray.IdentIdVerifyDate3 == null)("true") else (false)): vars.ParamArray.IdentIdVerifyDate3
						},
						IrsCountryCode: vars.ParamArray.IrsCountryCode default '',
						Last: upper(vars.ParamArray.Last),
						LastAddrVerifDate @(xsi#nil:if(vars.ParamArray.LastAddrVerifDate == null)("true") else (false)): vars.ParamArray.LastAddrVerifDate,
						MailOverride: vars.ParamArray.MailOverride default 0,
						Middle: upper(vars.ParamArray.Middle) default '',
                        MobilePhone: if(vars.ParamArray.MobilePhone != null and vars.ParamArray.MobilePhone != '' )(if(vars.ParamArray.MobilePhone contains("-"))(vars.ParamArray.MobilePhone) else (phoneNumberFormat(vars.ParamArray.MobilePhone))) else null,
						MothersMaidenName: upper(vars.ParamArray.MothersMaidenName) default '',
						//NameFormat: vars.ParamArray.NameFormat default '',
						Occupation: upper(vars.ParamArray.Occupation) default '',
                        PagerNumber: if(vars.ParamArray.PagerNumber != null and vars.ParamArray.PagerNumber != '' )(if(vars.ParamArray.PagerNumber contains("-"))(vars.ParamArray.PagerNumber) else (phoneNumberFormat(vars.ParamArray.PagerNumber))) else null,
						PreferredContactMethod: vars.ParamArray.PreferredContactMethod default 0,
						Restrict: vars.ParamArray.Restrict default 0,
						Sex: vars.ParamArray.Sex default '',
                        Ssn: if(sizeOf(vars.ParamArray.Ssn) <9)((lookupSsn(sizeOf(vars.ParamArray.Ssn))) ++ vars.ParamArray.Ssn) else (vars.ParamArray.Ssn),
						SsnCertification: vars.ParamArray.SsnCertification default 1,
						SsnOverride: vars.ParamArray.SsnOverride default 0,
						SsnType: vars.ParamArray.SsnType default 0,
						State: upper(vars.ParamArray.State) default '',
						//Street: if(vars.varAddressSplit.Street != null) (vars.varAddressSplit.Street) else (vars.ParamArray.Street) default '',
						Street: upper(if(vars.varAddressSplit.Street != null) (vars.varAddressSplit.Street) else if(vars.varAddressSplitWithLength.Street != null) (vars.varAddressSplitWithLength.Street) else (vars.ParamArray.Street) ) default '',						
						//SubType: vars.ParamArray.SubType default '',
						Suffix: upper(vars.ParamArray.Suffix) default '',
						Title: upper(vars.ParamArray.Title) default '',
						Type: vars.ParamArray.Type default 1,
						UsPersonFlag: vars.ParamArray.UsPersonFlag default 1,
						UserAmount1: vars.ParamArray.UserAmount1 default 0.00,
						UserAmount2: vars.ParamArray.UserAmount2 default 0.00,
						UserChar1: vars.ParamArray.UserChar1 default '',
						UserChar2: vars.ParamArray.UserChar2 default '',
						UserChar3: vars.ParamArray.UserChar3 default '',
						UserChar4: vars.ParamArray.UserChar4 default '',
						UserDate1 @(xsi#nil:if(vars.ParamArray.UserDate1 == null)("true") else (false)): vars.ParamArray.UserDate1,
						UserDate2 @(xsi#nil:if(vars.ParamArray.UserDate2 == null)("true") else (false)): vars.ParamArray.UserDate2,
						W8ExpirationDate @(xsi#nil:if(vars.ParamArray.W8ExpirationDate == null)("true") else (false)): vars.ParamArray.W8ExpirationDate,
                        WorkPhone: if(vars.ParamArray.WorkPhone != null and vars.ParamArray.WorkPhone != '' )(if(vars.ParamArray.WorkPhone contains("-"))(vars.ParamArray.WorkPhone) else (phoneNumberFormat(vars.ParamArray.WorkPhone))) else null,
						WorkPhoneExtension: vars.ParamArray.WorkPhoneExtension default '',
                        ZipCode: if(vars.ParamArray.ZipCode != 'null' and vars.ParamArray.ZipCode != null)((if((sizeOf(vars.ParamArray.ZipCode)) == 9)(ZipFormat(vars.ParamArray.ZipCode)) else if((sizeOf(vars.ParamArray.ZipCode)) == 6)(ZipFormat1(vars.ParamArray.ZipCode))
                                 else if((sizeOf(vars.ParamArray.ZipCode)) == 7)(ZipFormat2(vars.ParamArray.ZipCode))
                                 else if((sizeOf(vars.ParamArray.ZipCode)) == 8)(ZipFormat3(vars.ParamArray.ZipCode)) else (vars.ParamArray.ZipCode))) else ''
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
