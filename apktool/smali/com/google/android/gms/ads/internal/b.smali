.class public abstract Lcom/google/android/gms/ads/internal/b;
.super Lcom/google/android/gms/ads/internal/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/f;
.implements Lcom/google/android/gms/ads/internal/purchase/j;
.implements Lcom/google/android/gms/internal/ck;
.implements Lcom/google/android/gms/internal/de;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field protected final j:Lcom/google/android/gms/internal/dl;

.field protected transient k:Z

.field private final l:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzq;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-direct {p0, v0, p4, p6}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/d;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/d;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/n;Lcom/google/android/gms/ads/internal/d;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/b;->j:Lcom/google/android/gms/internal/dl;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/internal/ep;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ep;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/b;->l:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;
    .locals 30

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->getHeight()I

    move-result v9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzq$zza;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v4, v6

    if-lez v3, :cond_0

    add-int v3, v5, v9

    if-lez v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v4, v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v10, 0x5

    invoke-direct {v3, v10}, Landroid/os/Bundle;-><init>(I)V

    const-string v10, "x"

    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "y"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "width"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "height"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "visible"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gm;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v4, Lcom/google/android/gms/internal/gl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->p:Lcom/google/android/gms/ads/internal/client/x;

    if-eqz v2, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->p:Lcom/google/android/gms/ads/internal/client/x;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/x;->a()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v22

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0, v9}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/go;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/jp;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/jp;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 9000
    :catch_1
    move-exception v2

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1

    .line 0
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->q:Lcom/google/android/gms/internal/es;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gm;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move v15, v2

    :goto_4
    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/gm;->a()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/zzq;->y:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/gm;->f()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->l:Landroid/os/Messenger;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    invoke-static {}, Lcom/google/android/gms/internal/ax;->a()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->a:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v27, v0

    new-instance v28, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v15}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;-><init>(ZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zzq;->e()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;)V

    return-object v2

    :cond_4
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    move v15, v2

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/es;)V
    .locals 1

    const-string v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->q:Lcom/google/android/gms/internal/es;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ew;Ljava/lang/String;)V
    .locals 4

    const-string v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/k;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->z:Lcom/google/android/gms/ads/internal/purchase/k;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gm;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/c;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->z:Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/ads/internal/purchase/k;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/c;->e()Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/gk;Z)V
    .locals 6

    .prologue
    .line 0
    if-nez p1, :cond_1

    .line 19000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/gk;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-object v0, v0, Lcom/google/android/gms/internal/dd;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->q()Lcom/google/android/gms/internal/di;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-object v5, v2, Lcom/google/android/gms/internal/dd;->d:Ljava/util/List;

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/di;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/gk;->l:Lcom/google/android/gms/internal/dc;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gk;->l:Lcom/google/android/gms/internal/dc;

    iget-object v0, v0, Lcom/google/android/gms/internal/dc;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->q()Lcom/google/android/gms/internal/di;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/gk;->l:Lcom/google/android/gms/internal/dc;

    iget-object v5, v2, Lcom/google/android/gms/internal/dc;->g:Ljava/util/List;

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/di;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gk;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/d;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->q:Lcom/google/android/gms/internal/es;

    if-nez v1, :cond_5

    .line 10000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    if-nez v1, :cond_1

    .line 12000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->z:Lcom/google/android/gms/ads/internal/purchase/k;

    if-nez v1, :cond_2

    .line 13000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzq;->D:Z

    if-eqz v1, :cond_3

    .line 14000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/zzq;->D:Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ew;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzq;->D:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15000
    :catch_0
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-boolean v4, v0, Lcom/google/android/gms/ads/internal/zzq;->D:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->e:Z

    new-instance v3, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzq;->z:Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v3, v4, v5, v0, p0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/purchase/k;Lcom/google/android/gms/internal/er;Lcom/google/android/gms/ads/internal/purchase/j;)V

    .line 16000
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, v3}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->a(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 0
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->q:Lcom/google/android/gms/internal/es;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/es;->a(Lcom/google/android/gms/internal/er;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 17000
    :catch_1
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V
    .locals 8

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ew;->a(Lcom/google/android/gms/internal/ev;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/b$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/ads/internal/b$1;-><init>(Lcom/google/android/gms/ads/internal/b;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 18000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/bg;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->r()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/aj;

    move-result-object v3

    .line 1000
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aj;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aj;->c()V

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/aj;->b()Lcom/google/android/gms/internal/ag;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ag;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "In AdManger: loadAd, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 1000
    :goto_1
    if-eqz v3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "fingerprint"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "v"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 0
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/n;->a()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput v1, v3, Lcom/google/android/gms/ads/internal/zzq;->C:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    move-result-object v1

    const-string v0, "seq_num"

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_id"

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->v:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_id"

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_3

    const-string v0, "app_version"

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->f:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->a()Lcom/google/android/gms/ads/internal/request/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    .line 3000
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->b:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    const-string v6, "sdk_less_server_data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/ads/internal/request/m;

    invoke-direct {v0, v4, v1, p0}, Lcom/google/android/gms/ads/internal/request/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Lcom/google/android/gms/ads/internal/request/a$a;)V

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->e()Ljava/util/concurrent/Future;

    .line 0
    iput-object v0, v3, Lcom/google/android/gms/ads/internal/zzq;->g:Lcom/google/android/gms/internal/gr;

    move v0, v2

    goto/16 :goto_0

    .line 3000
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/request/b;

    invoke-direct {v0, v4, v1, v5, p0}, Lcom/google/android/gms/ads/internal/request/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/request/a$a;)V

    goto :goto_2

    :cond_5
    move-object v3, v0

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/gk;Z)Z
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/gk;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/n;

    iget-wide v2, p2, Lcom/google/android/gms/internal/gk;->h:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/n;->d()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/dd;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/n;

    iget-object v1, p2, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-wide v2, v1, Lcom/google/android/gms/internal/dd;->g:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/gk;->k:Z

    if-nez v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/gk;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/gk;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/gk;Z)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/gk;->p:Lcom/google/android/gms/internal/df;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/gk;->p:Lcom/google/android/gms/internal/df;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/de;)V

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/gk;->p:Lcom/google/android/gms/internal/df;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/internal/gk;->p:Lcom/google/android/gms/internal/df;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/de;)V

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget v1, v0, Lcom/google/android/gms/internal/dd;->j:I

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget v0, v0, Lcom/google/android/gms/internal/dd;->k:I

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->A:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/gp;->a(II)V

    const/4 v0, 0x1

    return v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/gk;)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/gk;)V

    iget v0, p1, Lcom/google/android/gms/internal/gk;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-object v0, v0, Lcom/google/android/gms/internal/dd;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4000
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->q()Lcom/google/android/gms/internal/di;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-object v5, v2, Lcom/google/android/gms/internal/dd;->e:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/di;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method protected final b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->a(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->c(Lcom/google/android/gms/internal/gk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/n;->b()V

    return-void

    .line 6000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-nez v0, :cond_0

    .line 5000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-object v0, v0, Lcom/google/android/gms/internal/dd;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->q()Lcom/google/android/gms/internal/di;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v5, v5, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    iget-object v5, v5, Lcom/google/android/gms/internal/dd;->c:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/di;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->l:Lcom/google/android/gms/internal/dc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->l:Lcom/google/android/gms/internal/dc;

    iget-object v0, v0, Lcom/google/android/gms/internal/dc;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->q()Lcom/google/android/gms/internal/di;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v5, v5, Lcom/google/android/gms/internal/gk;->l:Lcom/google/android/gms/internal/dc;

    iget-object v5, v5, Lcom/google/android/gms/internal/dc;->f:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/di;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gk;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    goto :goto_0
.end method

.method public final e_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/internal/gk;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->n()Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gl;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->b(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/n;->c()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->d(Lcom/google/android/gms/internal/gk;)V

    return-void

    .line 7000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public f_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->o()Z

    return-void
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "showInterstitial is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method protected r()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final s()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->e()V

    return-void
.end method

.method public final t()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->e_()V

    return-void
.end method

.method public final u()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->m()V

    return-void
.end method

.method public final v()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->f_()V

    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mediation adapter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/internal/gk;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/gk;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->p()Z

    return-void
.end method
