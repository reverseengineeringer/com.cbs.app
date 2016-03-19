.class public Lcom/cbs/app/view/utils/ImagePreLoader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Lcom/cbs/app/view/utils/ImagePreloadConfig;",
        "Ljava/lang/Double;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/cbs/app/view/utils/ImagePreLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/utils/ImagePreLoader;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs a([[Lcom/cbs/app/view/utils/ImagePreloadConfig;)Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 35
    aget-object v2, p1, v0

    .line 36
    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    .line 38
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 39
    if-eqz v0, :cond_1

    .line 40
    iget-object v4, v0, Lcom/cbs/app/view/utils/ImagePreloadConfig;->a:Ljava/lang/String;

    .line 41
    iget-object v5, v0, Lcom/cbs/app/view/utils/ImagePreloadConfig;->a:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 43
    iget v5, v0, Lcom/cbs/app/view/utils/ImagePreloadConfig;->b:I

    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/utils/ImagePreLoader;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v6

    .line 45
    int-to-double v8, v5

    int-to-float v0, v6

    invoke-static {v4, v8, v9, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-boolean v7, p0, Lcom/cbs/app/view/utils/ImagePreLoader;->c:Z

    if-eqz v7, :cond_0

    .line 47
    int-to-double v8, v5

    int-to-float v0, v6

    invoke-static {v4, v8, v9, v0}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/cbs/app/view/utils/ImagePreLoader;->b:Landroid/app/Activity;

    new-instance v5, Lcom/cbs/app/view/utils/ImagePreLoader$1;

    invoke-direct {v5, p0, v0}, Lcom/cbs/app/view/utils/ImagePreLoader$1;-><init>(Lcom/cbs/app/view/utils/ImagePreLoader;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v4, Lcom/cbs/app/view/utils/ImagePreLoader;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [[Lcom/cbs/app/view/utils/ImagePreloadConfig;

    invoke-direct {p0, p1}, Lcom/cbs/app/view/utils/ImagePreLoader;->a([[Lcom/cbs/app/view/utils/ImagePreloadConfig;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
