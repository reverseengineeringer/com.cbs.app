.class public abstract Lcom/google/android/gms/internal/fd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fi;
.implements Lcom/google/android/gms/internal/hu$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/fi",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/hu$a;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/fh$a;

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/google/android/gms/internal/hs;

.field protected final d:Lcom/google/android/gms/internal/gk$a;

.field protected e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field protected final f:Ljava/lang/Object;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/fh$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fd;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/fd;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fd;->d:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->d:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/fd;->c:Lcom/google/android/gms/internal/hs;

    iput-object p4, p0, Lcom/google/android/gms/internal/fd;->a:Lcom/google/android/gms/internal/fh$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fd;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(I)V
    .locals 32

    .prologue
    .line 0
    const/4 v2, -0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v4, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    move/from16 v0, p1

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fd;->a:Lcom/google/android/gms/internal/fh$a;

    move-object/from16 v31, v0

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fd;->d:Lcom/google/android/gms/internal/gk$a;

    iget-object v6, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/gk;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/fd;->c:Lcom/google/android/gms/internal/hs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->d:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->d:Lcom/google/android/gms/internal/gk$a;

    iget-wide v0, v6, Lcom/google/android/gms/internal/gk$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fd;->d:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gk$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/hs;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/df;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;)V

    .line 0
    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/fh$a;->b(Lcom/google/android/gms/internal/gk;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/hs;Z)V
    .locals 2

    .prologue
    .line 1000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fd;->b()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fd;->a(I)V

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fd;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected b()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final synthetic b_()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 0
    .line 3000
    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/fd$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fd$1;-><init>(Lcom/google/android/gms/internal/fd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fd;->g:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/fd;->g:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ax;->am:Lcom/google/android/gms/internal/at;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 3000
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fd;->a()V

    const/4 v0, 0x0

    .line 0
    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->a(Landroid/webkit/WebView;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fd;->a(I)V

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fd;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
