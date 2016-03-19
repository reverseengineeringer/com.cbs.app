package com.cbs.app.analytics;

public enum Action
{
  private String dC;
  private String dD;
  
  static
  {
    A = new Action("CBSiAppActionPageLiveTVTapped", 26, "LiveTVTapped", "Homescreen");
    B = new Action("CBSiAppActionPageViewPrimetime", 27, "PageViewPrimetime", "Primetime");
    C = new Action("CBSiAppActionPageViewLateNight", 28, "PageViewLateNight", "Latenight");
    D = new Action("CBSiAppActionPageViewCastBio", 29, "PageViewCastBio", "Cast Home");
    E = new Action("CBSiAppActionPageViewDaytime", 30, "PageViewDaytime", "DayCBSiAppActionPageViewRecentlyWatchedtime");
    F = new Action("CBSiAppActionPageViewWatch", 31, "PageViewWatch", "Show Home");
    G = new Action("CBSiAppActionPageViewSpecials", 32, "PageViewSpecials", "Specials");
    H = new Action("CBSiAppActionPageViewShowSocialStream", 33, "PageViewSocialStream", "Social Home");
    I = new Action("CBSiAppActionPageViewShowCBSSync", 34, "PageViewShowCBSSync", "Social Home");
    J = new Action("CBSiAppActionEvents", 35, "", "");
    K = new Action("CBSiAppActionPageViewHideBannerAD", 36, "PageViewHideBannerAD", "Show Home");
    L = new Action("CBSiAppActionPageViewInterstitialAD", 37, "PageViewInterstitialAD", "Interstitial Ad");
    M = new Action("CBSiAppActionPageViewHideInterstitialAD", 38, "PageViewHideInterstitialAD", "Interstitial Ad");
    N = new Action("CBSiAppActionClickThroughInterstitialAD", 39, "ClickThroughInterstitialAD", "Interstitial Ad");
    O = new Action("CBSiAppActionPageViewBannerAD", 40, "PageViewBannerAD", "Show Home");
    P = new Action("CBSiAppActionSocialSynctoShowTap", 41, "SocialSyncToShowTap", "Social Home");
    Q = new Action("CBSiAppActionSocialSyncStart", 42, "SocialSyncStart", "Social Home");
    R = new Action("CBSiAppActionSocialSyncEnd", 43, "SocialSyncEnd", "Social Home");
    S = new Action("CBSiAppActionHardStart", 44, "HardAppStart", "HardAppStart");
    T = new Action("CBSiAppActionSoftStart", 45, "SoftAppStart", "SoftAppStart");
    U = new Action("CBSiAppActionHardLaunch", 46, "HardAppLaunch", "HardAppLaunch");
    V = new Action("CBSiAppActionSoftLaunch", 47, "SoftAppLaunch", "SoftAppLaunch");
    W = new Action("CBSiAppActionSocialSyncLearnMore", 48, "SocialSyncLearnMore", "Social Home");
    X = new Action("CBSiAppActionSocialTakeaPoll", 49, "SocialTakeaPoll", "Social Home");
    Y = new Action("CBSiAppActionCBSSyncTapped", 50, "CBSSyncTapped", "CBSSyncTapped");
    Z = new Action("CBSiAppActionCBSSyncSynctoShow", 51, "CBSSynctoShow", "CBSSynctoShow");
    aa = new Action("CBSiAppActionCBSSyncAddtoCalendar", 52, "CBSSyncAddtoCalendar", "CBSSyncAddtoCalendar");
    ab = new Action("CBSiAppActionCBSSyncShowList", 53, "CBSSyncShowList", "CBSSyncShowList");
    ac = new Action("CBSiAppActionConnectLiveTapped", 54, "ConnectLiveTapped", "ConnectLiveTapped");
    ad = new Action("CBSiAppActionMenuLike", 55, "MenuLike", "LikeMenuTapped");
    ae = new Action("CBSiAppActionMenuShareApp", 56, "MenuShareApp", "ShareMenuTapped");
    af = new Action("CBSiAppActionArchiveEventTapped", 57, "ArchiveEventTapped", "ArchiveEventTapped");
    ag = new Action("CBSiAppActionGoToEventTapped", 58, "GoToEventTapped", "GoToEventTapped");
    ah = new Action("CBSiAppActionAddEventToCalendar", 59, "AddEventToCalendar", "AddEventToCalendar");
    ai = new Action("CBSiAppActionRSVPonFacebookTapped", 60, "RSVPonFacebookTapped", "RSVPonFacebookTapped");
    aj = new Action("CBSiAppActionAskaQuestionTapped", 61, "AskaQuestionTapped", "AskaQuestionTapped");
    ak = new Action("CBSiAppActionSubmitQuestion", 62, "SubmitQuestion", "SubmitQuestion");
    al = new Action("CBSiAppActionDropDownSearch", 63, "ShowsDropdownSearch", "Show Dropdown");
    am = new Action("CBSiAppActionShowsDropdownShowTapped", 64, "ShowsDropdownShowTapped", "Show Dropdown");
    an = new Action("CBSiAppActionShowsDropdownLarge", 65, "ShowsDropdownLarge", "Show Dropdown");
    ao = new Action("CBSiAppActionShowsDropdownSmall", 66, "ShowsDropdownSmall", "Show Dropdown");
    ap = new Action("CBSiAppActionPhotoExpandInfo", 67, "PhotoExpandInfo", "Photos Home");
    aq = new Action("CBSiAppActionClipDidReachEnd", 68, "ClipDidReachEnd", "Watch Video");
    ar = new Action("CBSiAppActionClipDidExit", 69, "ClipDidExit", "Watch Video");
    as = new Action("CBSiAppActionEpisodeDidReachEnd", 70, "ClipStarted", "Watch Video");
    at = new Action("CBSiAppActionEpisodeDidExit", 71, "ClipStarted", "Watch Video");
    au = new Action("CBSiAppActionCarouselTapped", 72, "CarouselTapped", "Homescreen");
    av = new Action("CBSiAppActionCarouselDisplayed", 73, "CarouselDisplayed", "Homescreen");
    aw = new Action("CBSiAppActionAdTapped", 74, "AdTapped", "Homescreen");
    ax = new Action("CBSiAppActionInterstitialAdDisplayed", 75, "InterstitialAdDisplayed", "Homescreen");
    ay = new Action("CBSiAppActionAddToCalendar", 76, "AddToCalendar", "Show Home");
    az = new Action("CBSiAppActionMoreShowInfoTapped", 77, "MoreShowInfoTapped", "Show Home");
    aA = new Action("CBSiAppActionLatestEpisodeTapped", 78, "LatestEpisodeTapped", "Homescreen");
    aB = new Action("CBSiAppActionThumbTapped", 79, "ThumbTapped", "");
    aC = new Action("CBSiAppActionSocialTwitterFollow", 80, "SocialTwitterFollow", "Show Home");
    aD = new Action("CBSiAppActionSocialFacebookLike", 81, "SocialFacebookLike", "Show Home");
    aE = new Action("CBSiAppActionSocialEmailShare", 82, "SocialEmailShare", "Show Home");
    aF = new Action("CBSiAppActionAddShowToMyCBS", 83, "AddShowToMyCBS", "Show Home");
    aG = new Action("CBSiAppActionRemoveShowFromMyCBS", 84, "RemoveShowFromMyCBS", "Show Home");
    aH = new Action("CBSiAppActionAddToMyCBSSuggestionPopupYes", 85, "AddToMyCBSSuggestionPopupYes", "Show Home");
    aI = new Action("CBSiAppActionAddToMyCBSSuggestionPopupNo", 86, "AddToMyCBSSuggestionPopupNo", "Show Home");
    aJ = new Action("CBSiAppActionAddToMyCBSSuggestionPopupDoNotAsk", 87, "AddToMyCBSSuggestionPopupDoNotAsk", "Show Home");
    aK = new Action("CBSiAppActionClipViewFullScreen", 88, "ClipViewFullScreen", "Watch Video");
    aL = new Action("CBSiAppActionEpisodeViewFullScreen", 89, "EpisodeViewFullScreen", "Watch Video");
    aM = new Action("CBSiAppActionSocialClipTwitterShare", 90, "SocialClipTwitterShare", "Watch Video");
    aN = new Action("CBSiAppActionSocialClipFacebookShare", 91, "SocialClipFacebookShare", "Watch Video");
    aO = new Action("CBSiAppActionSocialClipEmailShare", 92, "SocialClipEmailShare", "Watch Video");
    aP = new Action("CBSiAppActionSocialEpisodeTwitterShare", 93, "SocialEpisodeTwitterShare", "Watch Video");
    aQ = new Action("CBSiAppActionSocialEpisodeFacebookShare", 94, "SocialEpisodeFacebookShare", "Watch Video");
    aR = new Action("CBSiAppActionSocialEpisodeEmailShare", 95, "SocialEpisodeEmailShare", "Watch Video");
    aS = new Action("CBSiAppActionBuyEpisodes", 96, "BuyEpisodes", "Watch Video");
    aT = new Action("CBSiAppActionClipComments", 97, "ClipComments", "Watch Video");
    aU = new Action("CBSiAppActionEpisodeComments", 98, "EpisodeComments", "Watch Video");
    aV = new Action("CBSiAppActionHideEpisodeComments", 99, "HideEpisodeComments", "Watch Video");
    aW = new Action("CBSiAppActionHideClipComments", 100, "HideClipComments", "Watch Video");
    aX = new Action("CBSiAppActionSocialPhotoTwitterShare", 101, "SocialPhotoTwitterShare", "Photos Home");
    aY = new Action("CBSiAppActionSocialPhotoFacebookShare", 102, "SocialPhotoFacebookShare", "Photos Home");
    aZ = new Action("CBSiAppActionSocialPhotoEmailShare", 103, "SocialPhotoEmailShare", "Photos Home");
    ba = new Action("CBSiAppActionSocialKeywordSelect", 104, "SocialKeywordSelect", "Photos Home");
    bb = new Action("CBSiAppActionSocialPostReply", 105, "SocialPostReply", "Social Home");
    bc = new Action("CBSiAppActionSocialPostRetweet", 106, "SocialPostRetweet", "Social Home");
    bd = new Action("CBSiAppActionSocialPost", 107, "SocialPost", "Social Home");
    be = new Action("CBSiAppActionScheduleShowTapped", 108, "ScheduleShowTapped", "Schedule Home");
    bf = new Action("CBSiAppActionShowHomeShareOpen", 109, "ShowHomeShareOpen", "Show Home");
    bg = new Action("CBSiAppActionShowDropdownTapped", 110, "ShowDropdownTapped", "All Shows");
    bh = new Action("CBSiAppActionMenuOpen", 111, "MenuOpen", "MenuOpen");
    bi = new Action("RegistrationViewSignInSocial", 112, "RegistrationViewSignInSocial", "RegistrationViewSignInSocial");
    bj = new Action("RegistrationViewSignIn", 113, "RegistrationViewSignIn", "RegistrationViewSignIn");
    bk = new Action("RegistrationViewSignInError", 114, "RegistrationViewSignInError", "RegistrationViewSignInError");
    bl = new Action("RegistrationViewMoreInfo", 115, "RegistrationViewMoreInfo", "RegistrationViewMoreInfo");
    bm = new Action("UserLoginFail", 116, "UserLoginFail", "UserLoginFail");
    bn = new Action("SignIntoAllAccessAccount", 117, "SignIntoAllAccessAccount", "SignIntoAllAccessAccount");
    bo = new Action("Login", 118, "Login", "Login");
    bp = new Action("UserLoginSucess", 119, "UserLoginSucess", "UserLoginSucess");
    bq = new Action("RegistrationViewCreateAccount", 120, "RegistrationViewCreateAccount", "RegistrationViewCreateAccount");
    br = new Action("RegistrationViewCreateAccountError", 121, "RegistrationViewCreateAccountError", "RegistrationViewCreateAccountError");
    bs = new Action("UserRegisteredSucess", 122, "UserRegisteredSucess", "UserRegisteredSucess");
    bt = new Action("DeepLinkOpen", 123, "DeepLinkOpen", "Splash Page");
    bu = new Action("CBSiAppActionPageViewShowConnect", 124, "PageViewShowConnect", "Show Home");
    bv = new Action("CBSiAppPlayerTrackingVideoStart", 125, "PlayertrackingVideoStart", "PlayertrackingVideoStart");
    bw = new Action("CBSiAppPlayerTrackingVideoTime", 126, "PlayertrackingVideoTime", "PlayertrackingVideoTime");
    bx = new Action("CBSiAppPlayerTrackingVideoComplete", 127, "PlayertrackingVideoComplete", "PlayertrackingVideoComplete");
    by = new Action("CBSiAppPlayerTrackingAdStart", 128, "PlayertrackingAdStart", "PlayertrackingAdStart");
    bz = new Action("CBSiAppVideoAdStarted", 129, "VideoAdStarted", "VideoAdStarted");
    bA = new Action("CBSiAppPlayerTrackingAdPodStart", 130, "PlayertrackingAdPodStart", "PlayertrackingAdPodStart");
    bB = new Action("CBSiAppPlayerEpisodeStart", 131, "EpisodeStarted", "EpisodeStarted");
    bC = new Action("CBSiAppPlayerEpisodeEnd", 132, "EpisodeEnded", "EpisodeEnded");
    bD = new Action("CBSiAppPlayerLiveTVStart", 133, "live_tv_stream_start", "LiveTVStarted");
    bE = new Action("CBSiAppPlayerClipStart", 134, "ClipStarted", "ClipStarted");
    bF = new Action("CBSiAppPlayerClipEnd", 135, "ClipEnded", "ClipEnded");
    bG = new Action("SignIntoAllAccessAccount2", 136, "Sign Into All Access Account", "");
    bH = new Action("Login2", 137, "Login", "");
    bI = new Action("SVODUpsell", 138, "SVODUpsell", "p1:signin-upsell-popup”");
    bJ = new Action("SVODBillingError", 139, "SVODBillingError", "p1:user:warning:cc_expiration");
    bK = new Action("LiveTVCheckAvailability", 140, "LiveTVCheckAvailability", "p1:svod:liveTV:warning:checking geo availability");
    bL = new Action("LiveTVGPSNotOn", 141, "LiveTVGPSNotOn", "p1:svod:liveTV:warning:location not found");
    bM = new Action("LiveTvChannelSelected", 142, "LiveTVChannelSelected", "p1:svod:liveTV:channel selected");
    bN = new Action("LiveTVLocationNotAvailable", 143, "LiveTVLocationNotAvailable", "p1:svod:liveTV:error:location unavailable");
    bO = new Action("ClassicsTryUpsell", 144, "ClassicsTryUpsell", "p1:svod:classic:upsell");
    bP = new Action("CBSiAppSVODSignin", 145, "SVODSignIn", "p1:signin-popup");
    bQ = new Action("LiveTVNoStreamForSubscriber", 146, "NoStreamForSubscriber", "Redirected to Home");
    bR = new Action("CBSiAppActionResumePopUp", 147, "ResumePopUp", "ResumePopUp");
    bS = new Action("CBSiAppActionResumeActions", 148, "ResumeActions", "ResumeActions");
    bT = new Action("CBSiAppActionConcurrentStreamPopUp", 149, "ConcurrentStreamPopUp", "ConcurrentStreamPopUp");
    bU = new Action("ChromecastConnectTouched", 150, "ChromecastConnectTouched", "ChromecastConnectTouched");
    bV = new Action("ChromecastConnected", 151, "ChromecastConnected", "ChromecastConnectTouched");
    bW = new Action("ChromecastDisconnectTouched", 152, "ChromecastDisconnectTouched", "ChromecastConnectTouched");
    bX = new Action("ChromecastDisconnected", 153, "ChromecastDisconnected", "ChromecastConnectTouched");
    bY = new Action("ChromecastStreamStarted", 154, "ChromecastStreamStarted", "ChromecastConnectTouched");
    bZ = new Action("ShowsBrowseFilterTapped", 155, "ShowsBrowseFilterTapped", "ShowsBrowseFilterTapped");
    ca = new Action("ShowsBrowseDramaTapped", 156, "ShowsBrowseDramaTapped", "ShowsBrowseDramaTapped");
    cb = new Action("ShowsBrowseComedyTapped", 157, "ShowsBrowseComedyTapped", "ShowsBrowseComedyTapped");
    cc = new Action("ShowsBrowseRealityTapped", 158, "ShowsBrowseRealityTapped", "ShowsBrowseRealityTapped");
    cd = new Action("ShowsBrowseClassicsTapped", 159, "ShowsBrowseClassicsTapped", "ShowsBrowseClassicsTapped");
    ce = new Action("ShowsBrowseDaytimeTapped", 160, "ShowsBrowseDaytimeTapped", "ShowsBrowseDaytimeTapped");
    cf = new Action("ShowsBrowseLatenightTapped", 161, "ShowsBrowseLatenightTapped", "ShowsBrowseLatenightTapped");
    cg = new Action("ShowsBrowseSpecialsTapped", 162, "ShowsBrowseSpecialsTapped", "ShowsBrowseSpecialsTapped");
    ch = new Action("ShowsBrowseSearch", 163, "ShowsBrowseSearch", "ShowsBrowseSearch");
    ci = new Action("MenuShop", 164, "MenuShop", "MenuShop");
    cj = new Action("BillingDialogShown", 165, "BillingDialogShown", "billing");
    ck = new Action("BillingPaymentSuccessful", 166, "BillingPaymentSuccessful", "billing");
    cl = new Action("LiveTvUpsell", 167, "", "/live-tv/");
    cm = new Action("LiveTvUpsellTakeTourTapped", 168, "live tv|take the tour", "/live-tv/");
    cn = new Action("LiveTvUpsellSignInTapped", 169, "live tv|sign in", "/live-tv/");
    co = new Action("LiveTvUpsellCheckAvailabilityTapped", 170, "live tv|check availability", "/live-tv/");
    cp = new Action("LiveTvUpsellSeeDevicesTapped", 171, "live tv|see devices", "/live-tv/");
    cq = new Action("LiveTvUpsellLearnMoreTapped", 172, "live tv|learn more", "/live-tv/");
    cr = new Action("LiveTvUpsellCompareOptionsTapped", 173, "live tv|compare options", "/live-tv/");
    cs = new Action("LiveTvUpsellFaqTapped", 174, "live tv|faq", "/live-tv/");
    ct = new Action("LiveTvUpsellVerifyNow", 175, "live tv|verify now", "/live-tv/");
    cu = new Action("LiveTvAvailable", 176, "", "/live-tv/live tv available modal/");
    cv = new Action("LiveTvAvailableSignInTapped", 177, "live tv|sign in", "/live-tv/live tv available modal/");
    cw = new Action("LiveTvAvailableVerifyNowTapped", 178, "live tv|verify now", "/live-tv/live tv available modal/");
    cx = new Action("LiveTvNotAvailable", 179, "", "/live-tv/live tv not available in your area modal/");
    cy = new Action("LiveTvNotAvailableGetNotifiedTapped", 180, "live tv|get notified", "/live-tv/live tv not available in your area modal/");
    cz = new Action("LiveTvFaq", 181, "", "/live-tv/faq modal/");
    cA = new Action("LiveTvHowToWatch", 182, "", "/live-tv/howto modal/");
    cB = new Action("LiveTvStreamingOptions", 183, "", "/live-tv/options modal/");
    cC = new Action("LiveTvProviderSelection", 184, "", "/live-tv/select tv provider/");
    cD = new Action("LiveTvProviderSelectionFaqTapped", 185, "live tv|faq", "/live-tv/select tv provider/");
    cE = new Action("LiveTvProviderSelectionMoreOptionsTapped", 186, "live tv|more providers", "/live-tv/select tv provider/");
    cF = new Action("LiveTvProviderSelectionSearch", 187, "", "/live-tv/search tv provider/");
    cG = new Action("LiveTvProviderSelectionSearchFaqTapped", 188, "live tv|faq", "/live-tv/search tv provider/");
    cH = new Action("LiveTvProviderSelectionSearchFreeCbsAccount", 189, "live tv|cbsreg upsell", "/live-tv/search tv provider/");
    cI = new Action("LiveTvProviderSelectionSearchFunction", 190, "live tv|search box", "/live-tv/search tv provider/");
    cJ = new Action("LiveTvCheckAvailability", 191, "", "/live-tv/check availability modal/");
    cK = new Action("LiveTvCheckAvailabilityTapped", 192, "live tv|check availability", "/live-tv/check availability modal/");
    cL = new Action("LiveTvCheckAvailabilityFAQTapped", 193, "live tv|faq", "/live-tv/check availability modal/");
    cM = new Action("LiveTvUnknownLocation", 194, "live tv|upsell|unknown location", "/live-tv/");
    cN = new Action("LiveTvUnknownLocationFaqTapped", 195, "live tv|faq", "/live-tv/");
    cO = new Action("LiveTvUnknownLocationTryAgainTapped", 196, "live tv|try again", "/live-tv/");
    cP = new Action("LiveTvProviderCheckAvailability", 197, "", "/live-tv/provider/check availability/");
    cQ = new Action("LiveTvProviderCheckAvailabilityFaqTapped", 198, "live tv|faq", "/live-tv/provider/check availability/");
    cR = new Action("LiveTvProviderUnknownLocation", 199, "", "/live-tv/provider/unknown location/");
    cS = new Action("LiveTvProviderUnknownLocationFaqTapped", 200, "live tv|faq", "/live-tv/provider/unknown location/");
    cT = new Action("LiveTvProviderUnknownLocationTryAgainTapped", 201, "live tv|try again", "/live-tv/provider/unknown location/");
    cU = new Action("LiveTvProviderUnavailable", 202, "", "/live-tv/provider/local cbs unavailable/");
    cV = new Action("LiveTvProviderUnavailableFaqTapped", 203, "live tv|faq", "/live-tv/provider/local cbs unavailable/");
    cW = new Action("LiveTvProviderUnavailableGetNotified", 204, "live tv|get notified", "/live-tv/provider/local cbs unavailable/");
    cX = new Action("LiveTvProviderSignIn", 205, "", "/live-tv/provider/signin/");
    cY = new Action("LiveTvProviderSignInFail", 206, "", "/live-tv/provider/signin failed/");
    cZ = new Action("LiveTvProviderSignInFailFaqTapped", 207, "live tv|faq", "/live-tv/provider/signin failed/");
    da = new Action("LiveTvProviderNotSupported", 208, "", "/live-tv/provider/not supported/");
    db = new Action("LiveTvProviderNotSupportedSignInTapped", 209, "live tv|sign in", "/live-tv/provider/not supported/");
    dc = new Action("LiveTvProviderNotSupportedFaqTapped", 210, "live tv|faq", "/live-tv/provider/not supported/");
    dd = new Action("LiveTvProviderCbsNotAuthorized", 211, "", "/live-tv/provider/cbs not authorized/");
    de = new Action("LiveTvProviderCbsNotAuthorizedSignInTapped", 212, "live tv|sign in", "/live-tv/provider/not supported/");
    df = new Action("LiveTvProviderCbsNotAuthorizedFaqTapped", 213, "live tv|faq", "/live-tv/provider/not supported/");
    dg = new Action("LiveTvProviderVerified", 214, "", "/live-tv/provider/verified/");
    dh = new Action("LiveTvProviderVerifiedSignUpTapped", 215, "live tv|sign up", "/live-tv/provider/verified/");
    di = new Action("LiveTvProviderVerifiedSignInTapped", 216, "live tv|sign in", "/live-tv/provider/verified/");
    dj = new Action("LiveTvProviderVerifiedRegisterLater", 217, "live tv|register later", "/live-tv/provider/verified/");
    dk = new Action("LiveTvProviderVerifiedFaqTapped", 218, "live tv|faq", "/live-tv/provider/verified/");
    dl = new Action("LiveTvCbsRegSignIn", 219, "", "/live-tv/cbsreg/sign in/");
    dm = new Action("LiveTvCbsRegSignInSignInTapped", 220, "live tv|sign in", "/live-tv/cbsreg/sign in/");
    dn = new Action("LiveTvCbsRegSignInRegisterLaterTapped", 221, "live tv|register later", "/live-tv/cbsreg/sign in/");
    do = new Action("LiveTvCbsRegSignInSignUpTapped", 222, "live tv|sign up", "/live-tv/cbsreg/sign in/");
    dp = new Action("LiveTvCbsRegSignInSuccessfulViaEmail", 223, "", "/live-tv/cbsreg/sign in/");
    dq = new Action("LiveTvCbsRegSignInSuccessfulViaSocial", 224, "", "/live-tv/cbsreg/sign in/");
    dr = new Action("LiveTvCbsRegSignUp", 225, "", "/live-tv/cbsreg/sign up/");
    ds = new Action("LiveTvCbsRegSignUpSignInTapped", 226, "live tv|sign in", "/live-tv/cbsreg/sign up/");
    dt = new Action("LiveTvCbsRegSignUpRegisterLaterTapped", 227, "live tv|register later", "/live-tv/cbsreg/sign up/");
    du = new Action("LiveTvCbsRegSignUpSignUpTapped", 228, "live tv|sign up", "/live-tv/cbsreg/sign up/");
    dv = new Action("LiveTvCbsRegSignUpSuccessfulViaEmail", 229, "", "/live-tv/cbsreg/sign up/");
    dw = new Action("LiveTvCbsRegSignUpSuccessfulViaSocial", 230, "", "/live-tv/cbsreg/sign up/");
    dx = new Action("LiveTvCbsRegUpdate", 231, "", "/live-tv/cbsreg/update/");
    dy = new Action("LiveTvCbsRegUpdateCompleRegistration", 232, "live tv|complete registration", "/live-tv/cbsreg/update/");
    dz = new Action("LiveTvCbsRegUpdateRegisterLater", 233, "live tv|register later", "/live-tv/cbsreg/update/");
  }
  
  private Action(String paramString1, String paramString2)
  {
    dC = paramString1;
    dD = paramString2;
  }
  
  public final String getAppState()
  {
    return dD;
  }
  
  public final String getName()
  {
    return dC;
  }
  
  public final void setAppState(String paramString)
  {
    dD = paramString;
  }
  
  public final void setName(String paramString)
  {
    dC = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */