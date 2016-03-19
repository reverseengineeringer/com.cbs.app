.class public Lcom/cbs/app/service/ShowServiceImpl;
.super Lcom/cbs/app/service/CBSBaseService;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/ShowService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cbs/app/service/CBSBaseService;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 167
    const-class v5, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 168
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;IILcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 3

    .prologue
    .line 68
    if-eqz p1, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 70
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 71
    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p3

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/shows/video/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json?episodes=true&rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "v2.0"

    invoke-direct {p0, v0, v1, p1, p5}, Lcom/cbs/app/service/ShowServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 133
    const-string v0, "ANONYMOUS"

    .line 134
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/shows/video.json?category=Primetime&episodes=true&rows=24&userState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v2, "v2.0"

    const-class v5, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 144
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;IILcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 3

    .prologue
    .line 81
    if-eqz p1, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 84
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 85
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x3c

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/shows/video/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json?episodes=true&rows=60&start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&seasonNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "v2.0"

    invoke-direct {p0, v0, v1, p1, p5}, Lcom/cbs/app/service/ShowServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 90
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 58
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;IILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 59
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 37
    if-eqz p1, :cond_1

    .line 38
    const-string v0, "ANONYMOUS"

    .line 39
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/shows/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json?userState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string v2, "v2.0"

    const-class v5, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 49
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    invoke-direct {v0}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;-><init>()V

    invoke-interface {p3, v0}, Lcom/cbs/app/androiddata/ResponseModelListener;->a(Lcom/cbs/app/androiddata/ResponseModel;)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, ","

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1191
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1197
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/video/checkavailability/cidlist.json?cids="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&getObject=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "v2.0"

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/cbs/app/service/ShowServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    const-string v0, "/mycbs.json?showIdList="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 221
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :cond_1
    if-eqz p3, :cond_2

    .line 228
    const-string v0, "&maxVideoCount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    const-string v2, "v2.0"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 232
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 303
    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/apps-api/v2.0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/shows/groups.json?includeAllShowGroups=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    const-string v2, "v2.0"

    const-class v5, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 306
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 63
    const/16 v3, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;IILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 64
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x3c

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 54
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    const-string v1, "/mycbs.json?showIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_1
    if-eqz p3, :cond_2

    .line 250
    const-string v1, "&maxVideoCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    :cond_2
    const-string v2, "v2.0"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 254
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 3

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 104
    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    .line 105
    add-int/lit8 v0, p3, -0x1

    mul-int/lit8 v0, v0, 0x3c

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/shows/video/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json?episodes=false&rows=60&start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "v2.0"

    invoke-direct {p0, v0, v1, p1, p4}, Lcom/cbs/app/service/ShowServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 110
    :cond_1
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/shows/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video/season/availability.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    const-string v2, "v3.0"

    const-class v5, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 123
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/shows/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cast.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-class v1, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 211
    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/shows/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/albums.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-class v1, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 259
    return-void
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/albums/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    const-class v1, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 272
    return-void
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/video/cid/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v2, "v2.0"

    const-class v5, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 157
    return-void
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 6

    .prologue
    .line 286
    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/apps-api/v3.0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video/streams.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    if-eqz p2, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?contentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    :cond_0
    const-class v4, Lcom/cbs/app/view/model/VideoStreamsEndpoint;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;Z)V

    .line 298
    return-void
.end method
