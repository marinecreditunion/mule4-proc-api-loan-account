%dw 2.0
output application/xml
ns ns0 http://www.symxchange.generated.symitar.com/v2/account
ns soapenv http://schemas.xmlsoap.org/soap/envelope/
ns com http://www.symxchange.generated.symitar.com/v1/common/dto/common
ns xsi http://www.w3.org/2001/XMLSchema-instance
import * from dw::core::Strings
fun formatDate(localTime: DateTime) = localTime as String{format: "yyyy-MM-dd"}
fun lookupLoanId(code) = if (code < 100 ) (code[-2 to -1]) else if (code >= 100) (code[-3 to -1]) else ('')
---
{
	soapenv#Envelope: {
		soapenv#Header: {
		},
		soapenv#Body: {
			ns0#createLoan: {
				Request @("MessageId": "CreateLoanRecord"): {
					LoanCreatableFields: {
						AdvanceAmount: vars.ParamArray.AdvanceAmount,
						ApplicationId: vars.ParamArray.ApplicationId,
						ApprovalCode: vars.ParamArray.ApprovalCode,
						ApprovalDate @(xsi#nil:if(vars.ParamArray.ApprovalDate == null)("true") else (false)): vars.ParamArray.ApprovalDate,
						Apr: vars.ParamArray.Apr,
						AvailCreditCalc: vars.ParamArray.AvailCreditCalc,
						BalloonAmount: vars.ParamArray.BalloonAmount,
						BalloonDate @(xsi#nil:if(vars.ParamArray.BalloonDate == null)("true") else (false)): vars.ParamArray.BalloonDate,
						Branch: vars.ParamArray.Branch,
						ChargeOffAmount: vars.ParamArray.ChargeOffAmount,
						ChargeOffDate @(xsi#nil:if(vars.ParamArray.ChargeOffDate == null)("true") else (false)): vars.ParamArray.ChargeOffDate,
						ChargeOffType: vars.ParamArray.ChargeOffType,
						CloseDate @(xsi#nil:if(vars.ParamArray.CloseDate == null)("true") else (false)): vars.ParamArray.CloseDate,
						CollateralCode: vars.ParamArray.CollateralCode,
						CollateralDate @(xsi#nil:if(vars.ParamArray.CollateralDate == null)("true") else (false)): vars.ParamArray.CollateralDate,
						CouponCode: vars.ParamArray.CouponCode,
						CreatedAtBranch: vars.ParamArray.CreatedAtBranch,
						CreatedByUser: vars.ParamArray.CreatedByUser,
						CredLimitExpiration @(xsi#nil:if(vars.ParamArray.CredLimitExpiration == null)("true") else (false)): vars.ParamArray.CredLimitExpiration,
						CreditLimit: vars.ParamArray.CreditLimit,
						CreditReportComment: vars.ParamArray.CreditReportComment,
						CreditReportCompliance: vars.ParamArray.CreditReportCompliance,
						CreditReportConsumerInfo: vars.ParamArray.CreditReportConsumerInfo,
						CreditReportConsumerInfoDate @(xsi#nil:if(vars.ParamArray.CreditReportConsumerInfoDate == null)("true") else (false)): vars.ParamArray.CreditReportConsumerInfoDate,
						CreditReportLastStatus: vars.ParamArray.CreditReportLastStatus,
						CreditReportOccurDate @(xsi#nil:if(vars.ParamArray.CreditReportOccurDate == null)("true") else (false)): vars.ParamArray.CreditReportOccurDate,
						CreditReportTransferDate @(xsi#nil:if(vars.ParamArray.CreditReportTransferDate == null)("true") else (false)): vars.ParamArray.CreditReportTransferDate,
						CreditReportTransferIndicator: vars.ParamArray.CreditReportTransferIndicator,
						CreditReportTransferName: vars.ParamArray.CreditReportTransferName,
						CreditReportingCode: vars.ParamArray.CreditReportingCode,
						CreditScore: vars.ParamArray.CreditScore,
						CreditScoreType: vars.ParamArray.CreditScoreType,
						DealerCity: vars.ParamArray.DealerCity,
						DealerCode: vars.ParamArray.DealerCode,
						DealerCounty: vars.ParamArray.DealerCounty,
						DealerReserve: vars.ParamArray.DealerReserve,
						DealerState: vars.ParamArray.DealerState,
						Description: vars.ParamArray.Description,
						DiscountRate: vars.ParamArray.DiscountRate,
						DqCalculationMethod: vars.ParamArray.DqCalculationMethod,
						DueDate @(xsi#nil:if(vars.ParamArray.DueDate == null)("true") else (false)): vars.ParamArray.DueDate,
						DueDateAdvanceCode: vars.ParamArray.DueDateAdvanceCode,
						DueDay1: vars.ParamArray.DueDay1,
						DueDay2: vars.ParamArray.DueDay2,
						EcoaCode: vars.ParamArray.EcoaCode,
						EffectiveApr: vars.ParamArray.EffectiveApr,
						EscrowAmount: vars.ParamArray.EscrowAmount,
						EscrowApplied: vars.ParamArray.EscrowApplied,
						EscrowBucketAmount: {
							EntryId: 1,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount1
						},
						EscrowBucketAmount: {
							EntryId: 2,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount2
						},
						EscrowBucketAmount: {
							EntryId: 3,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount3
						},
						EscrowBucketAmount: {
							EntryId: 4,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount4
						},
						EscrowBucketAmount: {
							EntryId: 5,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount5
						},
						EscrowBucketAmount: {
							EntryId: 6,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount6
						},
						EscrowBucketAmount: {
							EntryId: 7,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount7
						},
						EscrowBucketAmount: {
							EntryId: 8,
							EscrowBucketAmount: vars.ParamArray.EscrowBucketAmount8
						},
						EscrowId: vars.ParamArray.EscrowId,
						EscrowUnpaid: vars.ParamArray.EscrowUnpaid,
						FirstInsBirthDate @(xsi#nil:if(vars.ParamArray.FirstInsBirthDate == null)("true") else (false)): vars.ParamArray.FirstInsBirthDate,
						FirstPaymentDate @(xsi#nil:if(vars.ParamArray.FirstPaymentDate == null)("true") else (false)): vars.ParamArray.FirstPaymentDate,
						GlAccrualStatusOption: vars.ParamArray.GlAccrualStatusOption,
						HighRiskCode: vars.ParamArray.HighRiskCode,
						InsuranceType: vars.ParamArray.InsuranceType,
						IntPaidPartialDayAmt: vars.ParamArray.IntPaidPartialDayAmt,
						IntPaidToDate @(xsi#nil:if(vars.ParamArray.IntPaidToDate == null)("true") else (false)): vars.ParamArray.IntPaidToDate,
						IntUnpaidBilled: vars.ParamArray.IntUnpaidBilled,
						InterestDate @(xsi#nil:if(vars.ParamArray.InterestDate == null)("true") else (false)): vars.ParamArray.InterestDate,
						InterestFromOpen: vars.ParamArray.InterestFromOpen,
						InterestLastYear: vars.ParamArray.InterestLastYear,
						InterestRate: vars.ParamArray.InterestRate,
						InterestRateIndex: vars.ParamArray.InterestRateIndex,
						InterestRateMargin: vars.ParamArray.InterestRateMargin,
						InterestRateMarginSign: vars.ParamArray.InterestRateMarginSign,
						InterestRateMax: vars.ParamArray.InterestRateMax,
						InterestRateMin: vars.ParamArray.InterestRateMin,
						InterestType: vars.ParamArray.InterestType,
						InterestUnpaid: vars.ParamArray.InterestUnpaid,
						LastAdvanceDate @(xsi#nil:if(vars.ParamArray.LastAdvanceDate == null)("true") else (false)): vars.ParamArray.LastAdvanceDate,
						LastCrReportDate @(xsi#nil:if(vars.ParamArray.LastCrReportDate == null)("true") else (false)): vars.ParamArray.LastCrReportDate,
						LastPaymentDate @(xsi#nil:if(vars.ParamArray.LastPaymentDate == null)("true") else (false)): vars.ParamArray.LastPaymentDate,
						LateChargeAccrued: vars.ParamArray.LateChargeAccrued,
						LateChargeDate @(xsi#nil:if(vars.ParamArray.LateChargeDate == null)("true") else (false)): vars.ParamArray.LateChargeDate,
						LateChargeLastYear: vars.ParamArray.LateChargeLastYear,
						LateChargeType: vars.ParamArray.LateChargeType,
						LateChargeUnpaid: vars.ParamArray.LateChargeUnpaid,
						LesseeCity: vars.ParamArray.LesseeCity,
						LesseeCounty: vars.ParamArray.LesseeCounty,
						LesseeState: vars.ParamArray.LesseeState,
						LoanCode: vars.ParamArray.LoanCode,
						MaturityDate @(xsi#nil:if(vars.ParamArray.MaturityDate == null)("true") else (false)): vars.ParamArray.MaturityDate,
						MaxDueDateAdvancePeriod: vars.ParamArray.MaxDueDateAdvancePeriod,
						MfoelId: vars.ParamArray.MfoelId,
						MicrAcctNumber: upper(2 ++ lookupLoanId(vars.NextLoanId!) ++ vars.AccountNumber!) default '', //upper(vars.ParamArray.MicrAcctNumber),
						MilitaryAprLoan: vars.ParamArray.MilitaryAprLoan,
						MinAdvance: vars.ParamArray.MinAdvance,
						MinBalance: vars.ParamArray.MinBalance,
						NewLoanDueDateCode: vars.ParamArray.NewLoanDueDateCode,
						NextRateChangeDate @(xsi#nil:if(vars.ParamArray.NextRateChangeDate == null)("true") else (false)): vars.ParamArray.NextRateChangeDate,
						Nickname: upper(vars.ParamArray.Nickname),
						NoteNumber: upper(vars.ParamArray.NoteNumber),
						OccupancyType: vars.ParamArray.OccupancyType,
						OpenDate: if(vars.ParamArray.OpenDate == null) (formatDate(now() >> 'GMT-6' )) else (vars.ParamArray.OpenDate), //@(xsi#nil:if(vars.ParamArray.OpenDate == null)("true") else (false)): vars.ParamArray.OpenDate,
						OrigInsuranceType: vars.ParamArray.OrigInsuranceType,
						OrigRiskGrade: vars.ParamArray.OrigRiskGrade,
						OrigUnamortizedFees: vars.ParamArray.OrigUnamortizedFees,
						OriginalBalance: vars.ParamArray.OriginalBalance,
						OriginalDate @(xsi#nil:if(vars.ParamArray.OriginalDate == null)("true") else (false)): vars.ParamArray.OriginalDate,
						OriginalRate: vars.ParamArray.OriginalRate,
						PartialPayment: vars.ParamArray.PartialPayment,
						Payment: vars.ParamArray.Payment,
						PaymentApplicationMethod: vars.ParamArray.PaymentApplicationMethod,
						PaymentCalcType: vars.ParamArray.PaymentCalcType,
						PaymentCount: vars.ParamArray.PaymentCount,
						PaymentFrequency: vars.ParamArray.PaymentFrequency,
						PaymentHistory: {
							EntryId: 1,
							PaymentHistory: vars.ParamArray.PaymentHistory1
						},
						PaymentHistory: {
							EntryId: 2,
							PaymentHistory: vars.ParamArray.PaymentHistory2
						},
						PaymentHistory: {
							EntryId: 3,
							PaymentHistory: vars.ParamArray.PaymentHistory3
						},
						PaymentHistory: {
							EntryId: 4,
							PaymentHistory: vars.ParamArray.PaymentHistory4
						},
						PaymentHistory: {
							EntryId: 5,
							PaymentHistory: vars.ParamArray.PaymentHistory5
						},
						PaymentHistory: {
							EntryId: 6,
							PaymentHistory: vars.ParamArray.PaymentHistory6
						},
						PaymentMethod: vars.ParamArray.PaymentMethod,
						PaymentSkips: vars.ParamArray.PaymentSkips,
						PaymentType: vars.ParamArray.PaymentType,
						PeriodicCap: vars.ParamArray.PeriodicCap,
						PeriodicFrequency: vars.ParamArray.PeriodicFrequency,
						PeriodicStartDate @(xsi#nil:if(vars.ParamArray.PeriodicStartDate == null)("true") else (false)): vars.ParamArray.PeriodicStartDate,
						PeriodicStartRate: vars.ParamArray.PeriodicStartRate,
						PmiOriginalValue: vars.ParamArray.PmiOriginalValue,
						PmiPurchasePrice: vars.ParamArray.PmiPurchasePrice,
						PmiYtd: vars.ParamArray.PmiYtd,
						PmtBucketAmount: {
							EntryId: 1,
							PmtBucketAmount: vars.ParamArray.PmtBucketAmount1
						},
						PmtBucketAmount: {
							EntryId: 2,
							PmtBucketAmount: vars.ParamArray.PmtBucketAmount2
						},
						PmtBucketAmount: {
							EntryId: 3,
							PmtBucketAmount: vars.ParamArray.PmtBucketAmount3
						},
						PmtBucketDueDate: {
							EntryId: 1,
							PmtBucketDueDate @(xsi#nil:if(vars.ParamArray.PmtBucketDueDate1 == null)("true") else (false)): vars.ParamArray.PmtBucketDueDate1
						},
						PmtBucketDueDate: {
							EntryId: 2,
							PmtBucketDueDate @(xsi#nil:if(vars.ParamArray.PmtBucketDueDate2 == null)("true") else (false)): vars.ParamArray.PmtBucketDueDate2
						},
						PmtBucketDueDate: {
							EntryId: 3,
							PmtBucketDueDate @(xsi#nil:if(vars.ParamArray.PmtBucketDueDate3 == null)("true") else (false)): vars.ParamArray.PmtBucketDueDate3
						},
						PrepaidFinanceChg: vars.ParamArray.PrepaidFinanceChg,
						PropertyAddressType: vars.ParamArray.PropertyAddressType,
						PropertyJurisdiction: vars.ParamArray.PropertyJurisdiction,
						PurposeCode: vars.ParamArray.PurposeCode,
						RateChangeCycleMonths: vars.ParamArray.RateChangeCycleMonths,
						Reference: upper(vars.ParamArray.Reference),
						RefinanceDate @(xsi#nil:if(vars.ParamArray.RefinanceDate == null)("true") else (false)): vars.ParamArray.RefinanceDate,
						RiskRate: vars.ParamArray.RiskRate,
						SalesTaxCityIndicator: vars.ParamArray.SalesTaxCityIndicator,
						SalesTaxCountyIndicator: vars.ParamArray.SalesTaxCountyIndicator,
						SalesTaxStateIndicator: vars.ParamArray.SalesTaxStateIndicator,
						SecondInsBirthDate @(xsi#nil:if(vars.ParamArray.SecondInsBirthDate == null)("true") else (false)): vars.ParamArray.SecondInsBirthDate,
						SecuredAmount: vars.ParamArray.SecuredAmount,
						SecuredCode: vars.ParamArray.SecuredCode,
						Service: {
							EntryId: 1,
							Service: vars.ParamArray.Service1
						},
						Service: {
							EntryId: 2,
							Service: vars.ParamArray.Service2
						},
						Service: {
							EntryId: 3,
							Service: vars.ParamArray.Service3
						},
						Service: {
							EntryId: 4,
							Service: vars.ParamArray.Service4
						},
						Service: {
							EntryId: 5,
							Service: vars.ParamArray.Service5
						},
						Service: {
							EntryId: 6,
							Service: vars.ParamArray.Service6
						},
						Service: {
							EntryId: 7,
							Service: vars.ParamArray.Service7
						},
						Service: {
							EntryId: 8,
							Service: vars.ParamArray.Service8
						},
						SinglePremiumDisability: vars.ParamArray.SinglePremiumDisability,
						SinglePremiumLife: vars.ParamArray.SinglePremiumLife,
						StatementDate @(xsi#nil:if(vars.ParamArray.StatementDate == null)("true") else (false)): vars.ParamArray.StatementDate,
						StatementGroup: vars.ParamArray.StatementGroup,
						StatementMailCode: vars.ParamArray.StatementMailCode,
						StatementPrevDate @(xsi#nil:if(vars.ParamArray.StatementPrevDate == null)("true") else (false)): vars.ParamArray.StatementPrevDate,
						Type: vars.ParamArray.Type,
						UnamortizedFees: vars.ParamArray.UnamortizedFees,
						UserAmount1: vars.ParamArray.UserAmount1,
						UserAmount2: vars.ParamArray.UserAmount2,
						UserChar1: upper(vars.ParamArray.UserChar1),
						UserChar2: upper(vars.ParamArray.UserChar2),
						UserChar3: upper(vars.ParamArray.UserChar3),
						UserChar4: upper(vars.ParamArray.UserChar4),
						UserDate1 @(xsi#nil:if(vars.ParamArray.UserDate1 == null)("true") else (false)): vars.ParamArray.UserDate1,
						UserDate2 @(xsi#nil:if(vars.ParamArray.UserDate2 == null)("true") else (false)): vars.ParamArray.UserDate2,
						VariableRateIndicator: vars.ParamArray.VariableRateIndicator,
						Vin: if(vars.SetMaxVinByValue.LLC_BI__VIN__c == null) ('') else if(sizeOf(vars.SetMaxVinByValue.LLC_BI__VIN__c) > 20) (vars.SetMaxVinByValue.LLC_BI__VIN__c[0 to 19]) else vars.SetMaxVinByValue.LLC_BI__VIN__c default '',
						WarningCode: {
							EntryId: 1,
							WarningCode: vars.ParamArray.WarningCode1
						},
						WarningCode: {
							EntryId: 2,
							WarningCode: vars.ParamArray.WarningCode2
						},
						WarningCode: {
							EntryId: 3,
							WarningCode: vars.ParamArray.WarningCode3
						},
						WarningCode: {
							EntryId: 4,
							WarningCode: vars.ParamArray.WarningCode4
						},
						WarningCode: {
							EntryId: 5,
							WarningCode: vars.ParamArray.WarningCode5
						},
						WarningExpiration: {
							EntryId: 1,
							WarningExpiration @(xsi#nil:if(vars.ParamArray.WarningExpiration1 == null)("true") else (false)): vars.ParamArray.WarningExpiration1
						},
						WarningExpiration: {
							EntryId: 2,
							WarningExpiration @(xsi#nil:if(vars.ParamArray.WarningExpiration2 == null)("true") else (false)): vars.ParamArray.WarningExpiration2
						},
						WarningExpiration: {
							EntryId: 3,
							WarningExpiration @(xsi#nil:if(vars.ParamArray.WarningExpiration3 == null)("true") else (false)): vars.ParamArray.WarningExpiration3
						},
						WarningExpiration: {
							EntryId: 4,
							WarningExpiration @(xsi#nil:if(vars.ParamArray.WarningExpiration4 == null)("true") else (false)): vars.ParamArray.WarningExpiration4
						},
						WarningExpiration: {
							EntryId: 5,
							WarningExpiration @(xsi#nil:if(vars.ParamArray.WarningExpiration5 == null)("true") else (false)): vars.ParamArray.WarningExpiration5
						},
						Id: vars.NextLoanId,
					},
					AccountNumber: vars.AccountNumber,
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