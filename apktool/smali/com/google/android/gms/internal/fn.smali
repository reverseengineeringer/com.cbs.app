.class public final Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fn$b;,
        Lcom/google/android/gms/internal/fn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/gk;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ha;

.field private final d:Lcom/google/android/gms/ads/internal/m;

.field private final e:Lcom/google/android/gms/internal/m;

.field private final f:Lcom/google/android/gms/internal/ab;

.field private final g:Ljava/lang/Object;

.field private final h:Lcom/google/android/gms/internal/gk$a;

.field private i:Z

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/fn;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/ha;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/gk$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/fn;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    iput-object p4, p0, Lcom/google/android/gms/internal/fn;->c:Lcom/google/android/gms/internal/ha;

    iput-object p3, p0, Lcom/google/android/gms/internal/fn;->f:Lcom/google/android/gms/internal/ab;

    iput-object p6, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/fn;->e:Lcom/google/android/gms/internal/m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->i:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/fn;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fn;)Lcom/google/android/gms/ads/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/ads/internal/formats/h$a;)Lcom/google/android/gms/internal/gk;
    .locals 31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/fn;->g:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/fn;->j:I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/fn;->j:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-eq v6, v2, :cond_1

    const/16 v30, 0x0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/gk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v5, v5, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v7, v7, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/fn;->k:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v9, v9, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v10, v10, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v12, v12, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/gk$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/gk$a;->g:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/hs;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/df;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;)V

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    move-object/from16 v30, p1

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hj;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/hj",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/fn;->a(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/hh;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/hh;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v7, v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->c:Lcom/google/android/gms/internal/ha;

    new-instance v1, Lcom/google/android/gms/internal/fn$5;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/fn$5;-><init>(Lcom/google/android/gms/internal/fn;ZDLjava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/ha;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ha$a;)Lcom/google/android/gms/internal/hj;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 13000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/c;->a()Lcom/google/android/gms/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 0
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fn;Lcom/google/android/gms/internal/bu;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    .line 11000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bu;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/m;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/bx;->a(Lcom/google/android/gms/internal/bu;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onCustomClick for asset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method private b()Lcom/google/android/gms/internal/gk;
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 0
    .line 1000
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fn;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v5, v10

    .line 4000
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fn;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v7, v10

    .line 5000
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fn;->a()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->b:Z

    move v4, v2

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->d:Z

    move v3, v2

    :goto_3
    const-string v2, "2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/fo;

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/fo;-><init>(ZZ)V

    move-object v3, v2

    .line 6000
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fn;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v3, v10

    .line 7000
    :goto_5
    instance-of v2, v3, Lcom/google/android/gms/ads/internal/formats/f;

    if-eqz v2, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/f;

    move-object v2, v0

    new-instance v4, Lcom/google/android/gms/internal/fn$b;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/fn$b;-><init>(Lcom/google/android/gms/internal/fn;)V

    new-instance v6, Lcom/google/android/gms/internal/fn$3;

    invoke-direct {v6, p0, v2}, Lcom/google/android/gms/internal/fn$3;-><init>(Lcom/google/android/gms/internal/fn;Lcom/google/android/gms/ads/internal/formats/f;)V

    iput-object v6, v4, Lcom/google/android/gms/internal/fn$b;->a:Lcom/google/android/gms/internal/ci;

    const-string v2, "/nativeAdCustomClick"

    invoke-interface {v5, v2, v6}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    .line 0
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fn;->a(Lcom/google/android/gms/ads/internal/formats/h$a;)Lcom/google/android/gms/internal/gk;

    move-result-object v2

    :goto_6
    return-object v2

    .line 1000
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ax;->Z:Lcom/google/android/gms/internal/at;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v2

    .line 1000
    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https:"

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/google/android/gms/internal/fn;->f:Lcom/google/android/gms/internal/ab;

    iget-object v4, p0, Lcom/google/android/gms/internal/fn;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/internal/fn;->e:Lcom/google/android/gms/internal/m;

    .line 3000
    new-instance v6, Lcom/google/android/gms/internal/hg;

    invoke-direct {v6}, Lcom/google/android/gms/internal/hg;-><init>()V

    sget-object v9, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ab$1;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ab$1;-><init>(Lcom/google/android/gms/internal/ab;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/m;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1000
    sget-wide v2, Lcom/google/android/gms/internal/fn;->a:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/aa;

    iget-object v3, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    iget-object v4, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    iget-object v5, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    iget-object v6, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;)V

    move-object v5, v2

    goto/16 :goto_0

    :cond_2
    const-string v3, "http:"

    goto :goto_7

    .line 4000
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/hg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/hg;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/fn$b;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/fn$b;-><init>(Lcom/google/android/gms/internal/fn;)V

    new-instance v4, Lcom/google/android/gms/internal/fn$1;

    invoke-direct {v4, p0, v5, v3, v2}, Lcom/google/android/gms/internal/fn$1;-><init>(Lcom/google/android/gms/internal/fn;Lcom/google/android/gms/internal/aa;Lcom/google/android/gms/internal/fn$b;Lcom/google/android/gms/internal/hg;)V

    iput-object v4, v3, Lcom/google/android/gms/internal/fn$b;->a:Lcom/google/android/gms/internal/ci;

    const-string v3, "/nativeAdPreProcess"

    invoke-interface {v5, v3, v4}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v4, v4, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {v5, v4, v3}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-wide v6, Lcom/google/android/gms/internal/fn;->a:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Lcom/google/android/gms/internal/hg;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    move-object v7, v2

    goto/16 :goto_1

    :cond_4
    move v4, v11

    .line 5000
    goto/16 :goto_2

    :cond_5
    move v3, v11

    goto/16 :goto_3

    :cond_6
    const-string v2, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/fp;

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/fp;-><init>(ZZ)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_7
    const-string v2, "3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "custom_template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/hg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/hg;-><init>()V

    sget-object v6, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/fn$2;

    invoke-direct {v8, p0, v3, v2}, Lcom/google/android/gms/internal/fn$2;-><init>(Lcom/google/android/gms/internal/fn;Lcom/google/android/gms/internal/hg;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v8, Lcom/google/android/gms/internal/fn;->a:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v2}, Lcom/google/android/gms/internal/hg;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/fq;

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/fq;-><init>(Z)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No handler for custom template: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "custom_template_id"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    :cond_9
    :goto_8
    move-object v3, v10

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/fn;->a(I)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_8

    .line 0
    :catch_0
    move-exception v2

    :goto_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/fn;->i:Z

    if-nez v2, :cond_b

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/fn;->a(I)V

    :cond_b
    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/fn;->a(Lcom/google/android/gms/ads/internal/formats/h$a;)Lcom/google/android/gms/internal/gk;

    move-result-object v2

    goto/16 :goto_6

    .line 6000
    :cond_c
    :try_start_1
    const-string v2, "tracking_urls_and_actions"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "impression_tracking_urls"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/fn;->b(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, v10

    :goto_a
    iput-object v2, p0, Lcom/google/android/gms/internal/fn;->k:Ljava/util/List;

    invoke-interface {v3, p0, v7}, Lcom/google/android/gms/internal/fn$a;->a(Lcom/google/android/gms/internal/fn;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/h$a;

    move-result-object v8

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/h;

    iget-object v3, p0, Lcom/google/android/gms/internal/fn;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/fn;->d:Lcom/google/android/gms/ads/internal/m;

    iget-object v6, p0, Lcom/google/android/gms/internal/fn;->e:Lcom/google/android/gms/internal/m;

    iget-object v9, p0, Lcom/google/android/gms/internal/fn;->h:Lcom/google/android/gms/internal/gk$a;

    iget-object v9, v9, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/ads/internal/formats/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/aa;Lcom/google/android/gms/internal/m;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-interface {v8, v2}, Lcom/google/android/gms/ads/internal/formats/h$a;->a(Lcom/google/android/gms/ads/internal/formats/h;)V

    move-object v3, v8

    goto/16 :goto_5

    :cond_d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    goto :goto_a

    .line 8000
    :catch_1
    move-exception v2

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_9

    .line 9000
    :catch_2
    move-exception v2

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_9

    .line 0
    :catch_3
    move-exception v2

    goto :goto_9

    :catch_4
    move-exception v2

    goto :goto_9
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/hj;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/hj",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 0
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "text_color"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v0, "bg_color"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v0, "animation_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "presentation_ms"

    const/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "images"

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/hi;->a(Ljava/util/List;)Lcom/google/android/gms/internal/hj;

    move-result-object v12

    new-instance v0, Lcom/google/android/gms/internal/fn$4;

    move-object v1, p0

    move-object v2, v8

    move-object v3, v11

    move-object v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fn$4;-><init>(Lcom/google/android/gms/internal/fn;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;III)V

    .line 10000
    new-instance v1, Lcom/google/android/gms/internal/hg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/hg;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/hi$1;

    invoke-direct {v2, v1, v0, v12}, Lcom/google/android/gms/internal/hi$1;-><init>(Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/hi$a;Lcom/google/android/gms/internal/hj;)V

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/hj;->a(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 0
    goto :goto_0

    :cond_1
    const-string v2, "image"

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/hj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/hj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/hj",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hj;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hj",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/fn;->a(IZ)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_2
    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-direct {p0, v2, p3, p4}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hj;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "require"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/fn;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hj;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->i:Z

    iput p1, p0, Lcom/google/android/gms/internal/fn;->j:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fn;->a(I)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->i:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->b()Lcom/google/android/gms/internal/gk;

    move-result-object v0

    return-object v0
.end method
