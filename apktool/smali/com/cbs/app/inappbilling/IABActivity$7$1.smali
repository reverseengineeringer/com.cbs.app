.class final Lcom/cbs/app/inappbilling/IABActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABActivity$7;->a(Lcom/cbs/app/androiddata/ResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABActivity$7;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABActivity$7;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$7$1;->a:Lcom/cbs/app/inappbilling/IABActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 332
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 336
    const-string v2, "sku"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity$7$1;->a:Lcom/cbs/app/inappbilling/IABActivity$7;

    iget-object v1, v1, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/cbs/app/inappbilling/IABActivity;->setResult(ILandroid/content/Intent;)V

    .line 340
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$7$1;->a:Lcom/cbs/app/inappbilling/IABActivity$7;

    iget-object v0, v0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->finish()V

    .line 341
    return-void
.end method
