.class public Lcom/cbs/app/livetv/controllers/SyncbakController;
.super Lcom/cbs/app/livetv/controllers/Controller;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/controllers/SyncbakController$b;,
        Lcom/cbs/app/livetv/controllers/SyncbakController$c;,
        Lcom/cbs/app/livetv/controllers/SyncbakController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cbs/app/livetv/controllers/Controller",
        "<",
        "Lcom/cbs/app/livetv/callbacks/SyncbakCallback;",
        ">;",
        "Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/livetv/controllers/LocationLiveTvController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/controllers/SyncbakController;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/controllers/Controller;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    invoke-direct {v0, p1}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController;->b:Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    .line 57
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController;->b:Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    invoke-virtual {v0, p0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->setLocationCallback(Lcom/cbs/app/livetv/callbacks/LocationControllerCallback;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/controllers/SyncbakController;Lcom/cbs/app/view/model/syncbak/SyncbakStream;I)V
    .locals 4

    .prologue
    .line 48
    .line 6111
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 6112
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "70C7B4F3-E4B7-13C3-0A99-E1A1C2DE72CD"

    new-instance v3, Lcom/cbs/app/livetv/controllers/SyncbakController$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/cbs/app/livetv/controllers/SyncbakController$2;-><init>(Lcom/cbs/app/livetv/controllers/SyncbakController;Lcom/cbs/app/view/model/syncbak/SyncbakStream;I)V

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->h(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 48
    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cbs/app/livetv/controllers/SyncbakController;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()Z
    .locals 10

    .prologue
    const/16 v5, 0x7d8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 146
    .line 147
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController;->b:Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->getUserLocation()Landroid/location/Location;

    move-result-object v4

    .line 148
    if-nez v4, :cond_1

    .line 151
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController;->b:Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1, v3}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    .line 187
    :goto_0
    return v2

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {v0, v5, v3}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController;->b:Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {v0, v5, v3}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "android_id"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    new-instance v6, Lcom/cbs/app/androiddata/model/DeviceData;

    invoke-direct {v6}, Lcom/cbs/app/androiddata/model/DeviceData;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Lcom/cbs/app/androiddata/model/DeviceData;->setIsPhone(I)V

    .line 165
    const/4 v0, 0x2

    .line 166
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    const/4 v0, 0x4

    .line 170
    :cond_3
    invoke-virtual {v6, v0}, Lcom/cbs/app/androiddata/model/DeviceData;->setDeviceType(I)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Setting current location:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/cbs/app/androiddata/model/DeviceData;->setLatitude(D)V

    .line 174
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/cbs/app/androiddata/model/DeviceData;->setLongitude(D)V

    .line 175
    invoke-virtual {v6, v5}, Lcom/cbs/app/androiddata/model/DeviceData;->setDeviceId(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Lcom/cbs/app/androiddata/model/DeviceData;->setLocationAccuracy(I)V

    .line 177
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Lcom/cbs/app/androiddata/model/DeviceData;->setLocationAge(I)V

    .line 179
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cbs/app/androiddata/DataManager;->setSyncbakDeviceData(Lcom/cbs/app/androiddata/model/DeviceData;)V

    .line 1193
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/DataManager;->getDeviceData()Lcom/cbs/app/androiddata/model/DeviceData;

    move-result-object v4

    .line 1196
    const-string v0, ""

    .line 1198
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AllAccess"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 1207
    :cond_4
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cbs/app/livetv/controllers/MVPDController;->j()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cbs/app/livetv/controllers/MVPDController;->i()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cbs/app/livetv/controllers/MVPDController;->getCurrentMvpdId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1208
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/livetv/controllers/MVPDController;->getCurrentMvpdId()Ljava/lang/String;

    move-result-object v3

    .line 1220
    :cond_5
    if-eqz v3, :cond_7

    .line 1221
    if-eqz v2, :cond_6

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 1228
    :cond_7
    if-nez v2, :cond_9

    .line 1229
    const-string v0, "AllAccess"

    invoke-virtual {v4, v0}, Lcom/cbs/app/androiddata/model/DeviceData;->setMVPDId(Ljava/lang/String;)V

    :goto_2
    move v2, v1

    .line 185
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 162
    goto/16 :goto_1

    .line 1231
    :cond_9
    invoke-virtual {v4, v0}, Lcom/cbs/app/androiddata/model/DeviceData;->setMVPDId(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->h()V

    .line 239
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getStationId()I

    move-result v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getMediaId()I

    move-result v2

    new-instance v3, Lcom/cbs/app/livetv/controllers/SyncbakController$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cbs/app/livetv/controllers/SyncbakController$1;-><init>(Lcom/cbs/app/livetv/controllers/SyncbakController;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;IILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 108
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;I)V
    .locals 4

    .prologue
    .line 319
    .line 4141
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->j()Z

    move-result v0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController$c;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/controllers/SyncbakController$c;-><init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 322
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 276
    .line 2141
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->j()Z

    move-result v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/controllers/SyncbakController$4;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/livetv/controllers/SyncbakController$4;-><init>(Lcom/cbs/app/livetv/controllers/SyncbakController;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cbs/app/service/SyncbakService;->b(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 310
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->h()V

    .line 244
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController;->b:Lcom/cbs/app/livetv/controllers/LocationLiveTvController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/LocationLiveTvController;->a()V

    .line 63
    invoke-super {p0}, Lcom/cbs/app/livetv/controllers/Controller;->c()V

    .line 64
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/controllers/SyncbakController$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/controllers/SyncbakController$3;-><init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V

    invoke-static {v0, v1}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 273
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 313
    .line 3141
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->j()Z

    move-result v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/controllers/SyncbakController$a;-><init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 325
    .line 5141
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->j()Z

    move-result v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController$b;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/controllers/SyncbakController$b;-><init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    :cond_0
    return-void
.end method
