.class public Lcom/cbs/app/service/MyCBSDBServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/MyCBSDBService;


# instance fields
.field private a:Lcom/cbs/app/db/MyRecentVideoDataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/cbs/app/view/model/db/MyRecentVideo;
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-direct {v0, p1}, Lcom/cbs/app/db/MyRecentVideoDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    .line 33
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a()V

    .line 34
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0, p2}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a(Ljava/lang/String;)Lcom/cbs/app/view/model/db/MyRecentVideo;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyRecentVideoDataSource;->b()V

    .line 37
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    new-instance v0, Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-direct {v0, p1}, Lcom/cbs/app/db/MyRecentVideoDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    .line 23
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a()V

    .line 24
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    new-instance v1, Lcom/cbs/app/view/model/db/MyRecentVideo;

    long-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p4, p5}, Lcom/cbs/app/view/model/db/MyRecentVideo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a(Lcom/cbs/app/view/model/db/MyRecentVideo;)V

    .line 25
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->b()V

    .line 27
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-direct {v0, p1}, Lcom/cbs/app/db/MyRecentVideoDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    .line 43
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updating: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0, p2, p3, p4}, Lcom/cbs/app/db/MyRecentVideoDataSource;->a(Ljava/lang/String;J)V

    .line 46
    iget-object v0, p0, Lcom/cbs/app/service/MyCBSDBServiceImpl;->a:Lcom/cbs/app/db/MyRecentVideoDataSource;

    invoke-virtual {v0}, Lcom/cbs/app/db/MyRecentVideoDataSource;->b()V

    .line 48
    :cond_0
    return-void
.end method
