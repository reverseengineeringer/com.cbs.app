.class public interface abstract Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;,
        Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;,
        Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;
    }
.end annotation


# static fields
.field public static final VO_OSMP_AD_DEVELOPMENT_SERVER:Ljava/lang/String; = "Development"

.field public static final VO_OSMP_AD_PRODUCTION_SERVER:Ljava/lang/String; = "Production"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_ADSERVERNAME:Ljava/lang/String; = "adServerName"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_CDNNAME:Ljava/lang/String; = "defaultReportingCdnName"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_CUSTOMER_KEY:Ljava/lang/String; = "customerKey"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_LOGGING:Ljava/lang/String; = "logging"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_PARTNERID:Ljava/lang/String; = "Partner_ID"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_PLAYERNAME:Ljava/lang/String; = "playerName"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_PLAYERVERSION:Ljava/lang/String; = "Player_Version"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_VIEWERID:Ljava/lang/String; = "viewerId"

.field public static final VO_OSMP_AD_SERVER_CONVIVA_KEYNAME_VISUALON_PLAYER:Ljava/lang/String; = "player"

.field public static final VO_OSMP_AD_SERVER_CURRENT_POSITION:Ljava/lang/String; = "currentPosition"

.field public static final VO_OSMP_AD_SERVER_TARGET_POSITION:Ljava/lang/String; = "seekToPisotion"


# virtual methods
.method public abstract addTrackingProperty(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;)Z
.end method

.method public abstract addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;",
            ")",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation
.end method

.method public abstract addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation
.end method

.method public abstract notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
