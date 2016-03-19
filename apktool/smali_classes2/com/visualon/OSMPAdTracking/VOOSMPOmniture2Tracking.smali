.class public Lcom/visualon/OSMPAdTracking/VOOSMPOmniture2Tracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct/range {p0 .. p10}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getEvent52Text(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "event52,event59"

    .line 26
    return-object v0
.end method

.method protected getEvent60Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "event60,event65"

    .line 21
    return-object v0
.end method

.method protected isDvrOM()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmniture2Tracking;->isDvr()Z

    move-result v0

    return v0
.end method

.method protected isLiveOM()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmniture2Tracking;->isLive()Z

    move-result v0

    return v0
.end method
