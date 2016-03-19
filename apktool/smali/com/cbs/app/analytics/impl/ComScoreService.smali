.class public final Lcom/cbs/app/analytics/impl/ComScoreService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/comscore/streaming/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/cbs/app/analytics/impl/ComScoreService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/analytics/impl/ComScoreService;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/comscore/a/k;->c()V

    .line 41
    invoke-static {}, Lcom/comscore/a/k;->e()V

    .line 43
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/a/k;->a(Landroid/content/Context;)V

    .line 34
    const-string v0, "CBS.com Android"

    invoke-static {v0}, Lcom/comscore/a/k;->b(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 8

    .prologue
    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string v0, "ns_st_ci"

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "c2"

    const-string v1, "3002231"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "c3"

    const-string v1, "3000023"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "ns_st_pr"

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "c4"

    const-string v1, "CBS.com Android"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "ns_st_ct"

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vc12"

    :goto_0
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "ns_st_st"

    const-string v1, "CBS"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "ns_st_cl"

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "ns_st_ge"

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "ns_st_pu"

    const-string v1, "CBS.com"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, ""

    .line 79
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 82
    const-string v1, "ns_st_ep"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getEpisodeNum()Ljava/lang/String;

    move-result-object v3

    .line 90
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    const-string v4, "ns_st_sn"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const-string v1, "ns_st_en"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    const-string v1, "c6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/comscore/streaming/h;

    invoke-direct {v0}, Lcom/comscore/streaming/h;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    sget-object v1, Lcom/comscore/streaming/b;->a:Lcom/comscore/streaming/b;

    invoke-virtual {v0, v2, v1}, Lcom/comscore/streaming/h;->a(Ljava/util/HashMap;Lcom/comscore/streaming/b;)V

    .line 106
    :goto_2
    return-void

    .line 72
    :cond_2
    const-string v0, "vc11"

    goto/16 :goto_0

    .line 103
    :cond_3
    sget-object v1, Lcom/comscore/streaming/b;->b:Lcom/comscore/streaming/b;

    invoke-virtual {v0, v2, v1}, Lcom/comscore/streaming/h;->a(Ljava/util/HashMap;Lcom/comscore/streaming/b;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LiveTV-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string v2, "ns_st_ci"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "ns_st_pu"

    const-string v3, "CBS.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "ns_st_st"

    const-string v3, "CBS"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "c2"

    const-string v3, "3002231"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v2, "c3"

    const-string v3, "3000023"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "ns_st_ct"

    const-string v3, "vc13"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "c4"

    const-string v3, "CBS.com Android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "c6"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "ns_st_cl"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Lcom/comscore/streaming/h;

    invoke-direct {v0}, Lcom/comscore/streaming/h;-><init>()V

    .line 123
    sput-object v0, Lcom/cbs/app/analytics/impl/ComScoreService;->b:Lcom/comscore/streaming/h;

    sget-object v2, Lcom/comscore/streaming/b;->c:Lcom/comscore/streaming/b;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/streaming/h;->a(Ljava/util/HashMap;Lcom/comscore/streaming/b;)V

    .line 125
    return-void
.end method

.method public static b()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/comscore/a/k;->d()V

    .line 63
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/cbs/app/analytics/impl/ComScoreService;->b:Lcom/comscore/streaming/h;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/cbs/app/analytics/impl/ComScoreService;->b:Lcom/comscore/streaming/h;

    invoke-virtual {v0}, Lcom/comscore/streaming/h;->a()V

    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/analytics/impl/ComScoreService;->b:Lcom/comscore/streaming/h;

    .line 132
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/comscore/streaming/h;

    invoke-direct {v0}, Lcom/comscore/streaming/h;-><init>()V

    .line 168
    sget-object v1, Lcom/comscore/streaming/a;->e:Lcom/comscore/streaming/a;

    invoke-virtual {v0, v1}, Lcom/comscore/streaming/h;->a(Lcom/comscore/streaming/a;)V

    .line 169
    return-void
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 173
    invoke-static {}, Lcom/comscore/a/k;->b()V

    .line 174
    return-void
.end method

.method public static g()V
    .locals 0

    .prologue
    .line 177
    invoke-static {}, Lcom/comscore/a/k;->a()V

    .line 179
    return-void
.end method
