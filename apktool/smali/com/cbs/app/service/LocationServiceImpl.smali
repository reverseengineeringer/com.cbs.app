.class public Lcom/cbs/app/service/LocationServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/LocationService;


# static fields
.field private static a:Z


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/service/LocationServiceImpl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/cbs/app/service/LocationServiceImpl;->b:Z

    .line 29
    iput-boolean v0, p0, Lcom/cbs/app/service/LocationServiceImpl;->c:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/service/LocationServiceImpl;->d:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/location/Location;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 137
    if-eqz p1, :cond_3

    .line 138
    iget-object v0, p0, Lcom/cbs/app/service/LocationServiceImpl;->d:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/cbs/app/service/LocationServiceImpl;->d:Landroid/location/Location;

    .line 144
    :goto_0
    return-object v0

    .line 1083
    :cond_0
    if-eqz p1, :cond_5

    .line 1084
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1090
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v4, "gps"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1091
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1093
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    move-object v4, v1

    move v1, v2

    .line 1096
    :goto_1
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    const-string v9, "network"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1097
    const-string v8, "network"

    invoke-virtual {v0, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1099
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    move v3, v2

    .line 1103
    :cond_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 1104
    iput-boolean v2, p0, Lcom/cbs/app/service/LocationServiceImpl;->c:Z

    .line 1107
    :cond_2
    if-eqz v4, :cond_7

    .line 1108
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    move-wide v2, v0

    .line 1112
    :goto_2
    if-eqz v5, :cond_6

    .line 1113
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 1115
    :goto_3
    sub-long v0, v2, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_4

    .line 141
    :goto_4
    iput-object v4, p0, Lcom/cbs/app/service/LocationServiceImpl;->d:Landroid/location/Location;

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/service/LocationServiceImpl;->d:Landroid/location/Location;

    goto :goto_0

    :cond_4
    move-object v4, v5

    .line 1120
    goto :goto_4

    :cond_5
    move-object v4, v5

    .line 1124
    goto :goto_4

    :cond_6
    move-wide v0, v6

    goto :goto_3

    :cond_7
    move-wide v2, v6

    goto :goto_2

    :cond_8
    move v1, v3

    move-object v4, v5

    goto :goto_1
.end method

.method public setLocationEnabled(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/cbs/app/service/LocationServiceImpl;->b:Z

    .line 34
    return-void
.end method

.method public setUserLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cbs/app/service/LocationServiceImpl;->d:Landroid/location/Location;

    .line 130
    return-void
.end method
