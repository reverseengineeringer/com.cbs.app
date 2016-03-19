.class final Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;I)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    iput p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->a:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 799
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->a:I

    if-ge v0, v2, :cond_2

    .line 800
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->A()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reconnection: Attempt "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 813
    :goto_1
    return-object v0

    .line 805
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->cancel(Z)Z

    .line 808
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 795
    check-cast p1, Ljava/lang/Boolean;

    .line 1818
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1819
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->A()Ljava/lang/String;

    .line 1820
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f(I)V

    .line 1821
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$1;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Lcom/google/android/gms/cast/CastDevice;)V

    .line 795
    :cond_1
    return-void
.end method
