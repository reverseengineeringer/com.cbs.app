.class public Lcom/cbs/app/visualon/player/PlayerEventTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/cbs/app/visualon/player/PlayerEventTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbs/app/view/model/VideoData;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getEpisodeNum()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v4

    .line 35
    const-string v5, "rsid"

    const-string v6, "cbsicbsapp"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    const-string v6, "showId"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    const-string v6, "showTitle"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    if-eqz v1, :cond_2

    .line 48
    const-string v5, "EpisodeId"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    const-string v1, "EpisodeTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_3
    if-eqz v3, :cond_4

    .line 57
    const-string v1, "CID"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_4
    if-eqz v4, :cond_5

    .line 61
    const-string v1, "PID"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_5
    const-string v1, "showName"

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "episodeName"

    invoke-static {p0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "contentId"

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "userType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 212
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->d()V

    .line 213
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1212
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->d()V

    .line 229
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->f()V

    .line 231
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JJLjava/lang/String;)V
    .locals 6

    .prologue
    .line 130
    invoke-static {p1, p6}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 131
    sub-long v2, p4, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "VideoTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/cbs/app/analytics/Action;->bw:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 134
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-static {p1, p2}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/cbs/app/analytics/Action;->bv:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 81
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/cbs/app/analytics/Action;->bB:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 88
    :goto_0
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->g()V

    .line 92
    return-void

    .line 84
    :cond_0
    sget-object v1, Lcom/cbs/app/analytics/Action;->bE:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "CHANNEL"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "live_tv_stream_start"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/cbs/app/analytics/Action;->bv:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 117
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->g()V

    .line 118
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 7

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "CHANNEL"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sub-long v2, p5, p3

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "VideoTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "userType"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/cbs/app/analytics/Action;->bw:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 157
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    const-string v1, "ADID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/cbs/app/analytics/Action;->by:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 198
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->e()V

    .line 200
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 6

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "PID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sub-long v2, p4, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "VideoTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "userType"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/cbs/app/analytics/Action;->bw:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 145
    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 121
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/ComScoreService;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 122
    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0}, Lcom/cbs/app/analytics/impl/ComScoreService;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    .line 127
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 223
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->g()V

    .line 225
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    invoke-static {p1, p2}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/cbs/app/analytics/Action;->bx:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 163
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Lcom/cbs/app/analytics/Action;->as:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v1, Lcom/cbs/app/analytics/Action;->aq:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 183
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "CHANNEL"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/cbs/app/analytics/Action;->bx:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 189
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 204
    const-string v1, "ADID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/cbs/app/analytics/Action;->bA:Lcom/cbs/app/analytics/Action;

    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 209
    return-void
.end method
