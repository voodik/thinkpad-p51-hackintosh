// Copyright: MirkoCovizzi

DefinitionBlock("", "SSDT", 2, "hack", "USBX", 0)
{
    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                // Values from MacBookPro14,3
                "kUSBSleepPortCurrentLimit", 3000,
                "kUSBWakePortCurrentLimit", 3000,
            })
        }
    }
}
