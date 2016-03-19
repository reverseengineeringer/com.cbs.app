.class public Lcom/cbs/app/view/fragments/show/ShowServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;
    }
.end annotation


# static fields
.field public static a:Lcom/cbs/app/view/fragments/show/model/Shows;

.field public static b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

.field private static e:Lcom/cbs/app/service/ShowServiceImpl;


# instance fields
.field c:Lcom/cbs/app/androiddata/ResponseModelListener;

.field d:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

.field private j:Lcom/cbs/app/androiddata/ResponseModelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager$1;-><init>(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 41
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager$2;-><init>(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->j:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 56
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager$3;-><init>(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->d:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 71
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->g:Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->e:Lcom/cbs/app/service/ShowServiceImpl;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    sput-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->e:Lcom/cbs/app/service/ShowServiceImpl;

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->f:Z

    .line 75
    return-void
.end method

.method public static a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 4

    .prologue
    .line 78
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 80
    iget-wide v2, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/ShowServiceManager;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->h:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    .line 102
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->h:I

    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;

    iget v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;->id:I

    if-ne v1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->h:I

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;->a(I)V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;

    iget v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;->id:I

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->h:I

    .line 107
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->e:Lcom/cbs/app/service/ShowServiceImpl;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->g:Landroid/content/Context;

    iget v2, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->h:I

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->j:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 1311
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1312
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/apps-api/v2.0/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/shows/group/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1313
    const-string v2, "v2.0"

    const-class v5, Lcom/cbs/app/view/fragments/show/model/Shows;

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/ShowServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getEverything()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/Shows;->showGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->f:Z

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    .line 137
    return-void
.end method

.method public getAllShows()V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->e:Lcom/cbs/app/service/ShowServiceImpl;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;->a()V

    goto :goto_0
.end method

.method public getEverything()V
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    if-nez v0, :cond_1

    .line 95
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->e:Lcom/cbs/app/service/ShowServiceImpl;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->d:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/ShowServiceImpl;->b(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    invoke-interface {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;->a()V

    goto :goto_0
.end method

.method public setLastId(I)V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;

    iget v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;->id:I

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->h:I

    .line 91
    :cond_0
    return-void
.end method

.method public setShowServiceListener(Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->i:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    .line 124
    return-void
.end method
