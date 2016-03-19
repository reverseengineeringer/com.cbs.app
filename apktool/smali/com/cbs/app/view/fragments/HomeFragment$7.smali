.class final Lcom/cbs/app/view/fragments/HomeFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/HomeFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/HomeFragment;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$7;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 758
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$7;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->e(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$7;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->d(Lcom/cbs/app/view/fragments/HomeFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 759
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$7;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->e(Lcom/cbs/app/view/fragments/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$7;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/HomeFragment;->d(Lcom/cbs/app/view/fragments/HomeFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 760
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f025f

    if-ne v0, v1, :cond_0

    .line 761
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 762
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 770
    :cond_0
    :goto_0
    return v4

    .line 764
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
