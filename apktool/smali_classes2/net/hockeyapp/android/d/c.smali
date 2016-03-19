.class public final Lnet/hockeyapp/android/d/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/hockeyapp/android/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/hockeyapp/android/d/c;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lnet/hockeyapp/android/d/c;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lnet/hockeyapp/android/d/c;->c:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    .line 2029
    iget-object v0, p0, Lnet/hockeyapp/android/d/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/d/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2030
    invoke-static {}, Lnet/hockeyapp/android/e/b;->a()Lnet/hockeyapp/android/e/b;

    iget-object v0, p0, Lnet/hockeyapp/android/d/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/e/b;->a(Ljava/lang/String;)Lnet/hockeyapp/android/c/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2033
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 16
    check-cast p1, Lnet/hockeyapp/android/c/d;

    .line 1038
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/d/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1039
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1040
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1042
    const-string v2, "parse_feedback_response"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1043
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1045
    iget-object v1, p0, Lnet/hockeyapp/android/d/c;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    :cond_0
    return-void
.end method
