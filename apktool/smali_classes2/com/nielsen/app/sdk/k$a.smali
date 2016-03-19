.class public abstract Lcom/nielsen/app/sdk/k$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/nielsen/app/sdk/k;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/k;Ljava/lang/String;JJ)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    iput-object p1, p0, Lcom/nielsen/app/sdk/k$a;->b:Lcom/nielsen/app/sdk/k;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/k$a;->a:Z

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/k$a;->c:Ljava/lang/Object;

    .line 1095
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot add task. Invalid name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_1
    cmp-long v0, p3, v2

    if-ltz v0, :cond_2

    cmp-long v0, p5, v2

    if-gez v0, :cond_3

    .line 1098
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add task ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Period/Delay invalid. Period = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/k$a;->b:Lcom/nielsen/app/sdk/k;

    invoke-virtual {v0, p2}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 1102
    iget-object v0, p0, Lcom/nielsen/app/sdk/k$a;->b:Lcom/nielsen/app/sdk/k;

    invoke-static {v0}, Lcom/nielsen/app/sdk/k;->a(Lcom/nielsen/app/sdk/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-static {}, Lcom/nielsen/app/sdk/k;->b()Lcom/nielsen/app/sdk/k;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nielsen/app/sdk/k;->schedule(Ljava/util/TimerTask;JJ)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/k$a;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/k$a;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/k$a;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/nielsen/app/sdk/k$a;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/nielsen/app/sdk/k$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nielsen/app/sdk/k$a;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/nielsen/app/sdk/k$a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/k$a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/k$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/k$a;->a:Z

    .line 55
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
