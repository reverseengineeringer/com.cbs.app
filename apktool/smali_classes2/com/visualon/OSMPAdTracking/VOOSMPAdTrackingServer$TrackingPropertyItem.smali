.class public Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingPropertyItem"
.end annotation


# instance fields
.field public mEvTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public mProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mEvTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mEvTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->hashCode()I

    move-result v0

    return v0
.end method
