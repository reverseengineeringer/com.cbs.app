.class public final Lcom/google/android/gms/internal/gk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gk$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final b:Lcom/google/android/gms/internal/hs;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Lorg/json/JSONObject;

.field public final k:Z

.field public final l:Lcom/google/android/gms/internal/dc;

.field public final m:Lcom/google/android/gms/internal/dm;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/google/android/gms/internal/dd;

.field public final p:Lcom/google/android/gms/internal/df;

.field public final q:J

.field public final r:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:Ljava/lang/String;

.field public final w:Lcom/google/android/gms/ads/internal/formats/h$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/hs;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/df;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/internal/hs;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/dc;",
            "Lcom/google/android/gms/internal/dm;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dd;",
            "Lcom/google/android/gms/internal/df;",
            "J",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/ads/internal/formats/h$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gk;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/gk;->c:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/gk;->d:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/gk;->e:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/gk;->f:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/gk;->g:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/gk;->h:J

    iput-object p10, p0, Lcom/google/android/gms/internal/gk;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/gk;->k:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->l:Lcom/google/android/gms/internal/dc;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->n:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->o:Lcom/google/android/gms/internal/dd;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->p:Lcom/google/android/gms/internal/df;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/gk;->q:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->r:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/gk;->s:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/gk;->t:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/gk;->u:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->v:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->j:Lorg/json/JSONObject;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/gk;->w:Lcom/google/android/gms/ads/internal/formats/h$a;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gk$a;)V
    .locals 31

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->d:Ljava/util/List;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/gms/internal/gk$a;->e:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->j:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->c:Lcom/google/android/gms/internal/dd;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/gk$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/gk$a;->g:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/hs;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/df;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->b()Z

    move-result v0

    goto :goto_0
.end method
