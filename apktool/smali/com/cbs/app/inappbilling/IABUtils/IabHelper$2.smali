.class final Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(ZLcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABUtils/IabHelper;ZLjava/util/List;Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 541
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->e:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iput-boolean p2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->c:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 543
    new-instance v1, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 544
    const/4 v0, 0x0

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->e:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iget-boolean v3, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->a:Z

    iget-object v4, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->b:Ljava/util/List;

    .line 1473
    invoke-virtual {v2, v3, v4}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(ZLjava/util/List;)Lcom/cbs/app/inappbilling/IABUtils/Inventory;
    :try_end_0
    .catch Lcom/cbs/app/inappbilling/IABUtils/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->e:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    invoke-virtual {v2}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b()V

    .line 555
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->e:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iget-boolean v2, v2, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->c:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->d:Landroid/os/Handler;

    new-instance v3, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;-><init>(Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    :cond_0
    return-void

    .line 548
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/cbs/app/inappbilling/IABUtils/IabException;->getResult()Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    move-result-object v1

    goto :goto_0
.end method
