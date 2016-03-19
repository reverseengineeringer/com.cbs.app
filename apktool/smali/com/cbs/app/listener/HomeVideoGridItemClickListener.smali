.class public Lcom/cbs/app/listener/HomeVideoGridItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$GridItemClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[Lcom/cbs/app/view/model/VideoData;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/cbs/app/view/model/VideoData;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->b:[Lcom/cbs/app/view/model/VideoData;

    .line 32
    iput-object p2, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->c:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/listener/HomeVideoGridItemClickListener;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/listener/HomeVideoGridItemClickListener;Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->a(Lcom/cbs/app/view/model/VideoData;)V

    return-void
.end method

.method private a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v1, "appState"

    const-string v2, "cbscom:Homescreen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "ShowTitle"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "showId"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "EpisodeTitle"

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "VideoID"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "evar_31"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "prop_31"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "ContentID"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "evar_64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "prop_64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPaid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string v1, "Regular"

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";Season "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";episode button"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "evar_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "prop_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v2, "evar_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "prop_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    const-string v1, "evar_6"

    const-string v2, "CBS svod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "prop_6"

    const-string v2, "CBS svod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->c:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/analytics/Action;->aA:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 113
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->b:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->b:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->b:[Lcom/cbs/app/view/model/VideoData;

    aget-object v0, v0, p1

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->c:Landroid/content/Context;

    instance-of v1, v1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    iget-object v2, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->c:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    iget-object v2, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v2, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;-><init>(Lcom/cbs/app/listener/HomeVideoGridItemClickListener;Lcom/cbs/app/view/model/VideoData;I)V

    invoke-virtual {v1, v2}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->setShowServiceListener(Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;)V

    .line 61
    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getEverything()V

    goto :goto_0
.end method
