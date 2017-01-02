phoneManager::phoneManager():OpalManager()
{
    sipEP = new phoneSIPEndpoint(*this);
    pcssEP = new phonePCSSEndpoint(*this);

    AddRouteEntry("pc:.* = sip:<da>");
    AddRouteEntry("sip:.* = pc:");
	
    pcssEP->SetSoundChannelRecordDevice(PSoundChannel::GetDefaultDevice(
			PSoundChannel::Recorder));
    pcssEP->SetSoundChannelPlayDevice(PSoundChannel::GetDefaultDevice(
			PSoundChannel::Player));
    pcssEP->SetDeferredAlerting(false);
    pcssEP->SetDeferredAnswer(true);
	
    PIPSocket::Address addr = INADDR_ANY;
    OpalListenerUDP *listener = new OpalListenerUDP(*sipEP, addr, 5060);
    sipEP->StartListener(listener);

    sipEP->Register("192.168.2.23", "sip:aor@192.168.2.23", "login", 
		"password", "domain", 3600, PTimeInterval(), PTimeInterval());
}