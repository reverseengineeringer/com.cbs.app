.class Lcom/visualon/OSMPBasePlayer/voOSAnalytics$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$2;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
