.class final Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABUtils/IabResult;

.field final synthetic b:Lcom/cbs/app/inappbilling/IABUtils/Inventory;

.field final synthetic c:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Inventory;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;->c:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;

    iput-object p2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    iput-object p3, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;->b:Lcom/cbs/app/inappbilling/IABUtils/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;->c:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;

    iget-object v0, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;->c:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2$1;->b:Lcom/cbs/app/inappbilling/IABUtils/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Inventory;)V

    .line 559
    return-void
.end method
