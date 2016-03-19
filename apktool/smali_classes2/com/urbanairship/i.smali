.class public abstract Lcom/urbanairship/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/i;->c:Z

    .line 47
    iput-object p1, p0, Lcom/urbanairship/i;->a:Landroid/app/Application;

    .line 48
    new-instance v0, Lcom/urbanairship/i$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/i$1;-><init>(Lcom/urbanairship/i;)V

    iput-object v0, p0, Lcom/urbanairship/i;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/urbanairship/i;->c:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/urbanairship/i;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/urbanairship/i;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/i;->c:Z

    .line 89
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
