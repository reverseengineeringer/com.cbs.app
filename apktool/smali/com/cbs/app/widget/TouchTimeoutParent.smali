.class public Lcom/cbs/app/widget/TouchTimeoutParent;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/util/Timer;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/cbs/app/widget/TouchTimeoutParent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/widget/TouchTimeoutParent;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->a:Ljava/util/ArrayList;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    .line 20
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    .line 21
    iput-boolean v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->f:Z

    .line 22
    iput-boolean v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->g:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Lcom/cbs/app/widget/TouchTimeoutParent;->d()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->a:Ljava/util/ArrayList;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    .line 20
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    .line 21
    iput-boolean v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->f:Z

    .line 22
    iput-boolean v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->g:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Lcom/cbs/app/widget/TouchTimeoutParent;->d()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->a:Ljava/util/ArrayList;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    .line 20
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    .line 21
    iput-boolean v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->f:Z

    .line 22
    iput-boolean v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->g:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Lcom/cbs/app/widget/TouchTimeoutParent;->d()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/TouchTimeoutParent;)V
    .locals 6

    .prologue
    .line 13
    .line 2097
    iget-object v1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 2098
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "currentTime: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " currentTime-lastTouch:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " expire in:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2101
    iget-wide v4, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 2103
    iget-boolean v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->g:Z

    if-nez v0, :cond_0

    .line 2105
    invoke-direct {p0}, Lcom/cbs/app/widget/TouchTimeoutParent;->e()V

    .line 2109
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/widget/TouchTimeoutParent;->a()V

    .line 2110
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 62
    iget-object v1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    .line 64
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->f:Z

    .line 126
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;

    .line 128
    invoke-interface {v0}, Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;->a()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->g:Z

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 72
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->d:Ljava/util/Timer;

    .line 73
    new-instance v0, Lcom/cbs/app/widget/TouchTimeoutParent$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/widget/TouchTimeoutParent$1;-><init>(Lcom/cbs/app/widget/TouchTimeoutParent;)V

    .line 79
    iget-object v1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->d:Ljava/util/Timer;

    iget-wide v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 80
    return-void
.end method

.method public final a(Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 86
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0}, Lcom/cbs/app/widget/TouchTimeoutParent;->a()V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getExpireIn()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    return-wide v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->g:Z

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-boolean v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->f:Z

    if-eqz v0, :cond_0

    .line 1115
    iput-boolean v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->f:Z

    .line 1116
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;

    .line 1118
    invoke-interface {v0}, Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;->b()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/widget/TouchTimeoutParent;->a()V

    .line 54
    iget-object v1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->c:J

    .line 56
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 56
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setExpireIn(J)V
    .locals 1

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/cbs/app/widget/TouchTimeoutParent;->e:J

    .line 146
    return-void
.end method
