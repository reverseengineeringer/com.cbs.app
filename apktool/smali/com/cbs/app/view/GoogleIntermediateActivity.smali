.class public Lcom/cbs/app/view/GoogleIntermediateActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/b$b;
.implements Lcom/google/android/gms/common/api/b$c;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Lcom/google/android/gms/common/api/b;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/cbs/app/view/GoogleIntermediateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/GoogleIntermediateActivity;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/GoogleIntermediateActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/cbs/app/view/GoogleIntermediateActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 198
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/cbs/app/view/GoogleIntermediateActivity;->getAccessToken()V

    .line 191
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionFailed: ConnectionResult.getErrorCode() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    iget-boolean v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iput-boolean v2, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->d:Z

    .line 206
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->d()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 208
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/cbs/app/view/GoogleIntermediateActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    iput-boolean v7, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->d:Z

    .line 211
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    goto :goto_0

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 214
    iput-boolean v7, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->d:Z

    .line 215
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/view/GoogleIntermediateActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->d:Z

    if-nez v0, :cond_0

    .line 218
    const-string v0, "Failed to connect to Google service"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    invoke-virtual {p0}, Lcom/cbs/app/view/GoogleIntermediateActivity;->finish()V

    goto :goto_0
.end method

.method public getAccessToken()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;

    iget-object v1, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/common/api/b;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/cbs/app/view/GoogleIntermediateActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/GoogleIntermediateActivity$1;-><init>(Lcom/cbs/app/view/GoogleIntermediateActivity;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    if-nez p2, :cond_1

    .line 90
    const-string v0, "Cancelled"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p0}, Lcom/cbs/app/view/GoogleIntermediateActivity;->finish()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iput-boolean v2, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->d:Z

    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lcom/cbs/app/view/GoogleIntermediateActivity;->getAccessToken()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/GoogleIntermediateActivity;->setContentView(I)V

    .line 1123
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$b;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/a;

    .line 2000
    new-instance v2, Lcom/google/android/gms/plus/d$a$a;

    invoke-direct {v2}, Lcom/google/android/gms/plus/d$a$a;-><init>()V

    .line 1123
    invoke-virtual {v2}, Lcom/google/android/gms/plus/d$a$a;->a()Lcom/google/android/gms/plus/d$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a$a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/d;->d:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    .line 1128
    sget-object v1, Lcom/cbs/app/view/GoogleIntermediateActivity;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1129
    sget-object v1, Lcom/cbs/app/view/GoogleIntermediateActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/b$a;

    .line 1132
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V

    .line 82
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cbs/app/view/GoogleIntermediateActivity;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 60
    :cond_0
    return-void
.end method
