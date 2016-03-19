.class public Lcom/conviva/ConvivaContentInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CDN_NAME_AKAMAI:Ljava/lang/String; = "AKAMAI"

.field public static final CDN_NAME_AMAZON:Ljava/lang/String; = "AMAZON"

.field public static final CDN_NAME_ATT:Ljava/lang/String; = "ATT"

.field public static final CDN_NAME_BITGRAVITY:Ljava/lang/String; = "BITGRAVITY"

.field public static final CDN_NAME_BT:Ljava/lang/String; = "BT"

.field public static final CDN_NAME_CDNETWORKS:Ljava/lang/String; = "CDNETWORKS"

.field public static final CDN_NAME_CDNVIDEO:Ljava/lang/String; = "CDNVIDEO"

.field public static final CDN_NAME_CHINACACHE:Ljava/lang/String; = "CHINACACHE"

.field public static final CDN_NAME_CHINANETCENTER:Ljava/lang/String; = "CHINANETCENTER"

.field public static final CDN_NAME_COMCAST:Ljava/lang/String; = "COMCAST"

.field public static final CDN_NAME_EDGECAST:Ljava/lang/String; = "EDGECAST"

.field public static final CDN_NAME_FASTLY:Ljava/lang/String; = "FASTLY"

.field public static final CDN_NAME_HIGHWINDS:Ljava/lang/String; = "HIGHWINDS"

.field public static final CDN_NAME_INHOUSE:Ljava/lang/String; = "INHOUSE"

.field public static final CDN_NAME_INTERNAP:Ljava/lang/String; = "INTERNAP"

.field public static final CDN_NAME_IPONLY:Ljava/lang/String; = "IPONLY"

.field public static final CDN_NAME_LEVEL3:Ljava/lang/String; = "LEVEL3"

.field public static final CDN_NAME_LIMELIGHT:Ljava/lang/String; = "LIMELIGHT"

.field public static final CDN_NAME_MICROSOFT:Ljava/lang/String; = "MICROSOFT"

.field public static final CDN_NAME_MIRRORIMAGE:Ljava/lang/String; = "MIRRORIMAGE"

.field public static final CDN_NAME_NGENIX:Ljava/lang/String; = "NGENIX"

.field public static final CDN_NAME_NICE:Ljava/lang/String; = "NICE"

.field public static final CDN_NAME_OCTOSHAPE:Ljava/lang/String; = "OCTOSHAPE"

.field public static final CDN_NAME_OTHER:Ljava/lang/String; = "OTHER"

.field public static final CDN_NAME_QBRICK:Ljava/lang/String; = "QBRICK"

.field public static final CDN_NAME_SWARMCAST:Ljava/lang/String; = "SWARMCAST"

.field public static final CDN_NAME_TALKTALK:Ljava/lang/String; = "TALKTALK"

.field public static final CDN_NAME_TELEFONICA:Ljava/lang/String; = "TELEFONICA"

.field public static final CDN_NAME_TELENOR:Ljava/lang/String; = "TELENOR"

.field public static final CDN_NAME_TELIA:Ljava/lang/String; = "TELIA"

.field public static final CDN_NAME_VELOCIX:Ljava/lang/String; = "VELOCIX"

.field public static final DEVICE_TYPE_CONSOLE:Ljava/lang/String; = "Console"

.field public static final DEVICE_TYPE_MOBILE:Ljava/lang/String; = "Mobile"

.field public static final DEVICE_TYPE_PC:Ljava/lang/String; = "PC"

.field public static final DEVICE_TYPE_SET_TOP_BOX:Ljava/lang/String; = "Settop"

.field public static final FRAMEWORK_NAME_BRIGHTCOVE:Ljava/lang/String; = "Brightcove"

.field public static final FRAMEWORK_NAME_KALTURA:Ljava/lang/String; = "Kaltura"

.field public static final FRAMEWORK_NAME_OOYALA:Ljava/lang/String; = "Ooyala"

.field public static final FRAMEWORK_NAME_OSMF:Ljava/lang/String; = "OSMF"

.field public static final FRAMEWORK_NAME_THE_PLATFORM:Ljava/lang/String; = "thePlatform"

.field public static final PLUGIN_NAME_KALTURA:Ljava/lang/String; = "ConvivaKalturaPlugin"


# instance fields
.field public assetName:Ljava/lang/String;

.field public defaultReportingBitrateKbps:I

.field public defaultReportingCdnName:Ljava/lang/String;

.field public defaultReportingResource:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public deviceType:Ljava/lang/String;

.field public frameworkName:Ljava/lang/String;

.field public frameworkVersion:Ljava/lang/String;

.field public isLive:Ljava/lang/Boolean;

.field public playerName:Ljava/lang/String;

.field public pluginName:Ljava/lang/String;

.field public pluginVersion:Ljava/lang/String;

.field public streamUrl:Ljava/lang/String;

.field public tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public viewerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->assetName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/conviva/ConvivaContentInfo;->defaultReportingBitrateKbps:I

    const-string v0, "OTHER"

    iput-object v0, p0, Lcom/conviva/ConvivaContentInfo;->defaultReportingCdnName:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->defaultReportingResource:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->frameworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->frameworkVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->pluginName:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->pluginVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->viewerId:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->deviceId:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->deviceType:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->playerName:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/ConvivaContentInfo;->streamUrl:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/conviva/ConvivaContentInfo;->isLive:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/conviva/ConvivaContentInfo;->assetName:Ljava/lang/String;

    iput-object p2, p0, Lcom/conviva/ConvivaContentInfo;->tags:Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-void
.end method
