.class final Lcom/cbs/app/view/GoogleIntermediateActivity$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/GoogleIntermediateActivity;->getAccessToken()V
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
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/view/GoogleIntermediateActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/GoogleIntermediateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->b:Lcom/cbs/app/view/GoogleIntermediateActivity;

    iput-object p2, p0, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->b:Lcom/cbs/app/view/GoogleIntermediateActivity;

    iget-object v2, p0, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->a:Ljava/lang/String;

    const-string v3, "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/auth/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    .line 154
    invoke-static {}, Lcom/cbs/app/view/GoogleIntermediateActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :catch_1
    move-exception v1

    .line 158
    iget-object v2, p0, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->b:Lcom/cbs/app/view/GoogleIntermediateActivity;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/d;->a()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/cbs/app/view/GoogleIntermediateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    invoke-static {}, Lcom/cbs/app/view/GoogleIntermediateActivity;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "starting intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/d;->a()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Lcom/cbs/app/view/GoogleIntermediateActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :catch_2
    move-exception v1

    .line 166
    invoke-static {}, Lcom/cbs/app/view/GoogleIntermediateActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 140
    check-cast p1, Ljava/lang/String;

    .line 1174
    invoke-static {}, Lcom/cbs/app/view/GoogleIntermediateActivity;->a()Ljava/lang/String;

    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->b:Lcom/cbs/app/view/GoogleIntermediateActivity;

    invoke-static {v0, p1}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity$1;->b:Lcom/cbs/app/view/GoogleIntermediateActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/GoogleIntermediateActivity;->finish()V

    .line 140
    :cond_0
    return-void
.end method
