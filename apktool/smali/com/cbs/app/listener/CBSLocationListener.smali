.class public Lcom/cbs/app/listener/CBSLocationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/cbs/app/listener/CBSLocationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/listener/CBSLocationListener;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/listener/CBSLocationListener;->c:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cbs/app/listener/CBSLocationListener;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/cbs/app/listener/CBSLocationListener;->c:Landroid/location/Location;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Longitude: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latitude: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 41
    const/4 v7, 0x0

    .line 42
    new-instance v1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/cbs/app/listener/CBSLocationListener;->b:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nMy Current City is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    :cond_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    sget-object v1, Lcom/cbs/app/listener/CBSLocationListener;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v7

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/cbs/app/listener/CBSLocationListener;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 68
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v3, "gps"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 71
    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v3

    const-string v6, "network"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    move-object v0, v2

    .line 75
    :goto_1
    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    move-wide v6, v2

    .line 81
    :goto_2
    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 85
    :goto_3
    sub-long v2, v6, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 86
    iput-object v1, p0, Lcom/cbs/app/listener/CBSLocationListener;->c:Landroid/location/Location;

    .line 90
    :goto_4
    new-instance v0, Lcom/cbs/app/service/LocationServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/LocationServiceImpl;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/cbs/app/listener/CBSLocationListener;->c:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/cbs/app/listener/CBSLocationListener;->c:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/cbs/app/service/LocationService;->setUserLocation(Landroid/location/Location;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/listener/CBSLocationListener;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    return-void

    .line 88
    :cond_1
    iput-object v0, p0, Lcom/cbs/app/listener/CBSLocationListener;->c:Landroid/location/Location;

    goto :goto_4

    :cond_2
    move-wide v2, v4

    goto :goto_3

    :cond_3
    move-wide v6, v4

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/listener/CBSLocationListener;->b:Landroid/content/Context;

    .line 30
    return-void
.end method
