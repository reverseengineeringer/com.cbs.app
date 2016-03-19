.class final Lcom/cbs/app/inappbilling/IABActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB startSetup failed code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0, v3}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v1, "account_types"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "com.google"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/cbs/app/inappbilling/IABActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection to in App purchasing failed\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0, v4}, Lcom/cbs/app/inappbilling/IABActivity;->setResult(I)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->finish()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0, v3}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 163
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$4;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->a()V

    goto :goto_0
.end method
