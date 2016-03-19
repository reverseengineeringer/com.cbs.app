.class final Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/FacebookIntermediateActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/FacebookIntermediateActivityV2;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    const-string v1, "Share Cancel"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    .line 277
    return-void
.end method

.method public final onError(Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    .line 285
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 265
    .line 1268
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    const-string v1, "Share Posted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1269
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$2;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    .line 265
    return-void
.end method
