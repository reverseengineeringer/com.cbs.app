.class public final Lcom/google/android/gms/internal/fl;
.super Lcom/google/android/gms/internal/fg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field protected g:Lcom/google/android/gms/internal/dh;

.field private h:Lcom/google/android/gms/internal/dl;

.field private i:Lcom/google/android/gms/internal/db;

.field private j:Lcom/google/android/gms/internal/dd;

.field private final k:Lcom/google/android/gms/internal/bg;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/internal/fh$a;Lcom/google/android/gms/internal/bg;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/fg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/fh$a;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fl;->h:Lcom/google/android/gms/internal/dl;

    iget-object v0, p2, Lcom/google/android/gms/internal/gk$a;->c:Lcom/google/android/gms/internal/dd;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Lcom/google/android/gms/internal/dd;

    iput-object p5, p0, Lcom/google/android/gms/internal/fl;->k:Lcom/google/android/gms/internal/bg;

    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/google/android/gms/internal/gk;
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/gk$a;

    iget-object v6, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/gk;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    iget-object v14, v6, Lcom/google/android/gms/internal/dh;->b:Lcom/google/android/gms/internal/dc;

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    iget-object v15, v6, Lcom/google/android/gms/internal/dh;->c:Lcom/google/android/gms/internal/dm;

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    iget-object v0, v6, Lcom/google/android/gms/internal/dh;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fl;->j:Lcom/google/android/gms/internal/dd;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    iget-object v0, v6, Lcom/google/android/gms/internal/dh;->e:Lcom/google/android/gms/internal/df;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/gk$a;

    iget-wide v0, v6, Lcom/google/android/gms/internal/gk$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gk$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/hs;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/df;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const-class v6, Lcom/google/ads/a/a/a;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method

.method protected final a(J)V
    .locals 13

    .prologue
    .line 0
    iget-object v11, p0, Lcom/google/android/gms/internal/fl;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/dj;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->e:Lcom/google/android/gms/internal/gk$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl;->h:Lcom/google/android/gms/internal/dl;

    iget-object v4, p0, Lcom/google/android/gms/internal/fl;->j:Lcom/google/android/gms/internal/dd;

    iget-object v5, p0, Lcom/google/android/gms/internal/fl;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->t:Z

    sget-object v6, Lcom/google/android/gms/internal/ax;->am:Lcom/google/android/gms/internal/at;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v6

    .line 0
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/gms/internal/fl;->k:Lcom/google/android/gms/internal/bg;

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/dj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/internal/dd;ZJJLcom/google/android/gms/internal/bg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/db;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/db;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->j:Lcom/google/android/gms/internal/dd;

    iget-object v1, v1, Lcom/google/android/gms/internal/dd;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/db;->a(Ljava/util/List;)Lcom/google/android/gms/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    iget v0, v0, Lcom/google/android/gms/internal/dh;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/fg$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected mediation result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->g:Lcom/google/android/gms/internal/dh;

    iget v2, v2, Lcom/google/android/gms/internal/dh;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fg$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/fg$a;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fg$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/fg;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/db;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->i:Lcom/google/android/gms/internal/db;

    invoke-interface {v0}, Lcom/google/android/gms/internal/db;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
