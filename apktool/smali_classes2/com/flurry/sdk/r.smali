.class public Lcom/flurry/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bk$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/r$a;
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/r;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:J

.field private final f:J

.field private g:Z

.field private h:Landroid/location/Location;

.field private i:J

.field private j:Landroid/location/LocationManager;

.field private k:Lcom/flurry/sdk/r$a;

.field private l:Landroid/location/Location;

.field private m:Z

.field private n:I

.field private o:Lcom/flurry/sdk/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ah",
            "<",
            "Lcom/flurry/sdk/bm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/flurry/sdk/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/flurry/sdk/r;->c:I

    .line 47
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/r;->d:J

    .line 48
    const-wide/32 v0, 0x15f90

    iput-wide v0, p0, Lcom/flurry/sdk/r;->e:J

    .line 49
    iput-wide v6, p0, Lcom/flurry/sdk/r;->f:J

    .line 54
    iput-wide v6, p0, Lcom/flurry/sdk/r;->i:J

    .line 60
    iput-boolean v2, p0, Lcom/flurry/sdk/r;->m:Z

    .line 61
    iput v2, p0, Lcom/flurry/sdk/r;->n:I

    .line 63
    new-instance v0, Lcom/flurry/sdk/r$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/r$1;-><init>(Lcom/flurry/sdk/r;)V

    iput-object v0, p0, Lcom/flurry/sdk/r;->o:Lcom/flurry/sdk/ah;

    .line 74
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/r;->j:Landroid/location/LocationManager;

    .line 75
    new-instance v0, Lcom/flurry/sdk/r$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/r$a;-><init>(Lcom/flurry/sdk/r;)V

    iput-object v0, p0, Lcom/flurry/sdk/r;->k:Lcom/flurry/sdk/r$a;

    .line 77
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    move-result-object v1

    .line 79
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/r;->g:Z

    .line 80
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)V

    .line 81
    sget-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportLocation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/r;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "ExplicitLocation"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/flurry/sdk/r;->h:Landroid/location/Location;

    .line 84
    const-string v0, "ExplicitLocation"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/bk;->a(Ljava/lang/String;Lcom/flurry/sdk/bk$a;)V

    .line 85
    sget-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, ExplicitLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/r;->h:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/r;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/flurry/sdk/r;->i:J

    return-wide v0
.end method

.method static synthetic a(Lcom/flurry/sdk/r;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/flurry/sdk/r;->l:Landroid/location/Location;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/flurry/sdk/r;->j:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 239
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/r;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/flurry/sdk/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/r;->a:Lcom/flurry/sdk/r;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/flurry/sdk/r;

    invoke-direct {v0}, Lcom/flurry/sdk/r;-><init>()V

    sput-object v0, Lcom/flurry/sdk/r;->a:Lcom/flurry/sdk/r;

    .line 29
    :cond_0
    sget-object v0, Lcom/flurry/sdk/r;->a:Lcom/flurry/sdk/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 220
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/r;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/flurry/sdk/r;->f()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 224
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/r;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/flurry/sdk/r;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/r;->n:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 196
    iget-boolean v0, p0, Lcom/flurry/sdk/r;->m:Z

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/r;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/r;->k:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 201
    iput v2, p0, Lcom/flurry/sdk/r;->n:I

    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/r;->i:J

    .line 2248
    sget-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    const-string v1, "Unregister location timer"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2249
    invoke-static {}, Lcom/flurry/sdk/bn;->a()Lcom/flurry/sdk/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/r;->o:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bn;->b(Lcom/flurry/sdk/ah;)V

    .line 207
    iput-boolean v2, p0, Lcom/flurry/sdk/r;->m:Z

    .line 208
    sget-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    const-string v1, "LocationProvider stopped"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 287
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 297
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    const-string v2, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_1
    return-void

    .line 287
    :sswitch_0
    const-string v1, "ReportLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ExplicitLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/r;->g:Z

    .line 290
    sget-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ReportLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/r;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 293
    :pswitch_1
    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lcom/flurry/sdk/r;->h:Landroid/location/Location;

    .line 294
    sget-object v0, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ExplicitLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/r;->h:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        -0x33814ed7 -> :sswitch_0
        -0x11ecc5d7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized b()V
    .locals 7

    .prologue
    .line 89
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    const-string v2, "Location update requested"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/flurry/sdk/r;->n:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 1154
    iget-boolean v0, p0, Lcom/flurry/sdk/r;->m:Z

    if-nez v0, :cond_3

    .line 1158
    iget-boolean v0, p0, Lcom/flurry/sdk/r;->g:Z

    if-eqz v0, :cond_3

    .line 1162
    iget-object v0, p0, Lcom/flurry/sdk/r;->h:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 1166
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    .line 1167
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1172
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/sdk/r;->n:I

    .line 1176
    const/4 v1, 0x0

    .line 1177
    invoke-static {v0}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1212
    const-string v1, "passive"

    .line 1228
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/flurry/sdk/r;->j:Landroid/location/LocationManager;

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flurry/sdk/r;->k:Lcom/flurry/sdk/r$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1185
    :cond_2
    invoke-direct {p0, v1}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/r;->l:Landroid/location/Location;

    .line 1188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/r;->i:J

    .line 1243
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    const-string v2, "Register location timer"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-static {}, Lcom/flurry/sdk/bn;->a()Lcom/flurry/sdk/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/r;->o:Lcom/flurry/sdk/ah;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bn;->a(Lcom/flurry/sdk/ah;)V

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/r;->m:Z

    .line 1192
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    const-string v2, "LocationProvider started"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_3
    monitor-exit p0

    return-void

    .line 1180
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/flurry/sdk/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    const-string v1, "network"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    const-string v2, "Stop update location requested"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/flurry/sdk/r;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 102
    .line 104
    iget-object v1, p0, Lcom/flurry/sdk/r;->h:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/r;->h:Landroid/location/Location;

    .line 138
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    iget-boolean v1, p0, Lcom/flurry/sdk/r;->g:Z

    if-eqz v1, :cond_4

    .line 112
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/flurry/sdk/r;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :cond_2
    invoke-static {v1}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2212
    const-string v1, "passive"

    .line 126
    :goto_1
    if-eqz v1, :cond_4

    .line 127
    invoke-direct {p0, v1}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    iput-object v0, p0, Lcom/flurry/sdk/r;->l:Landroid/location/Location;

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/r;->l:Landroid/location/Location;

    .line 137
    :cond_4
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/r;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocation() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_5
    invoke-static {v1}, Lcom/flurry/sdk/r;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2216
    const-string v1, "network"

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method
