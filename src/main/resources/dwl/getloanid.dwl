%dw 2.0
output application/xml
ns ns0 http://www.symxchange.generated.symitar.com/v2/account
ns pow http://www.symxchange.generated.symitar.com/v1/poweron
ns soapenv http://schemas.xmlsoap.org/soap/envelope/
ns xsi http://www.w3.org/2001/XMLSchema-instance

---

{
	soapenv#Envelope:{
		soapenv#Header:{},
		soapenv#Body:{
		pow#executePowerOn:{
		Request: {
		Credentials: {
			AdministrativeCredentials: {
			Password: p('secure::DeviceInformation.Password')
			}
			},
			DeviceInformation @(DeviceType: p('secure::DeviceInformation.DeviceType'), DeviceNumber: p('secure::DeviceInformation.DeviceNumber')): null,
			Header:{
				MessageID: 'GetLoanId',
				RGState: 'START'
				},
			Body:{
				File: 'MCU.GETLOANID',
				RGSession: '1',
				
				UserDefinedParameters:{
				RGUserChr:{
					ID:1,
					Value:  payload.CreateLoanRecord.Request.AccountNumber
					},
					
					RGUserChr:{
					ID:2,
					Value: payload.CreateLoanRecord.Request.Type
					}

				},
				
				PromptResponse:{
					RGAnsText: 0
				}
			}
			
		}
	}
	}
    }
}