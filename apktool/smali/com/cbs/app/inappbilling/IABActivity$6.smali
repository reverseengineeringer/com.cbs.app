.class final Lcom/cbs/app/inappbilling/IABActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABActivity;->a()V
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
    .line 219
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$6;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Inventory;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed inventory check response:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$6;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0, v3}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 225
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$6;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$6;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0, v3}, Lcom/cbs/app/inappbilling/IABActivity;->setResult(I)V

    .line 227
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$6;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->finish()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v0, "subs"

    invoke-virtual {p2, v0}, Lcom/cbs/app/inappbilling/IABUtils/Inventory;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchases size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    .line 237
    iget-boolean v3, v0, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->a:Z

    if-eqz v3, :cond_2

    .line 238
    iget-wide v4, v0, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 241
    :cond_3
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "total valid subscriptions found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$6;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0, v1}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Ljava/util/TreeMap;)V

    goto :goto_0
.end method
