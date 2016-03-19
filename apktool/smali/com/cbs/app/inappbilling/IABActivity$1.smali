.class final Lcom/cbs/app/inappbilling/IABActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/inappbilling/IABActivity;
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
    .line 54
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$1;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$1;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$1;->a:Lcom/cbs/app/inappbilling/IABActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/inappbilling/IABActivity;->setResult(I)V

    .line 59
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$1;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->finish()V

    .line 61
    :cond_0
    return-void
.end method
