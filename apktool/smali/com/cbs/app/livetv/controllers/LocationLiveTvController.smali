.class public Lcom/cbs/app/livetv/controllers/LocationLiveTvController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/location/Location;

.field private static c:J


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->d:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->getUserLocation()Landroid/location/Location;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 86
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/location/Location;
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->d:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 105
    const-string v1, "gps"

    invoke-direct {p0, v1}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 108
    :goto_0
    const-string v3, "network"

    invoke-direct {p0, v3}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 114
    :cond_0
    if-eqz v1, :cond_4

    .line 115
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    move-wide v8, v4

    .line 119
    :goto_1
    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 123
    :goto_2
    sub-long v10, v8, v4

    cmp-long v0, v6, v10

    if-gez v0, :cond_1

    .line 125
    sput-wide v8, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->c:J

    .line 134
    :goto_3
    return-object v1

    .line 129
    :cond_1
    sput-wide v4, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->c:J

    move-object v1, v2

    .line 130
    goto :goto_3

    :cond_2
    move-object v1, v2

    .line 134
    goto :goto_3

    :cond_3
    move-wide v4, v6

    goto :goto_2

    :cond_4
    move-wide v8, v6

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->f:Z

    .line 1074
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1075
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->e:Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;

    .line 82
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 91
    const-string v0, "network"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewLocation()Landroid/location/Location;
    .locals 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    const-string v1, "cbsDebugUserLocationLatitude"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "cbsDebugUserLocationLongitude"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 146
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 148
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 149
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 153
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->c()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserLocation()Landroid/location/Location;
    .locals 8

    .prologue
    const-wide/32 v6, 0x493e0

    .line 42
    sget-object v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cbsDebugUserLocationTimeStamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1053
    sget-wide v4, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->c:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    sub-long v0, v2, v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    if-eqz v0, :cond_2

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->getNewLocation()Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b:Landroid/location/Location;

    .line 45
    :cond_2
    sget-object v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b:Landroid/location/Location;

    return-object v0

    .line 1053
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 166
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->f:Z

    if-nez v0, :cond_2

    .line 1157
    if-eqz p1, :cond_0

    sget-object v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b:Landroid/location/Location;

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    .line 168
    :goto_0
    sput-object p1, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b:Landroid/location/Location;

    .line 169
    iget-object v3, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->e:Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 2057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->c:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xa4cb80

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 169
    :goto_1
    if-eqz v1, :cond_2

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->e:Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;

    invoke-interface {v0}, Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;->a()V

    .line 173
    :cond_2
    return-void

    .line 1160
    :cond_3
    sget-object v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const v3, 0x48435000    # 200000.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 2057
    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->f:Z

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->c()Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b:Landroid/location/Location;

    .line 184
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->e:Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->e:Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;

    invoke-interface {v0}, Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;->b()V

    .line 188
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public setLocationCallback(Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->e:Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;

    .line 97
    return-void
.end method
