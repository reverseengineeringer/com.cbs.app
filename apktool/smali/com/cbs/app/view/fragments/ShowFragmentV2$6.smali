.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/ShowFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/ShowFragmentV2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 441
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->r(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->s(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    move v0, v1

    .line 459
    :goto_0
    return v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->t(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    .line 454
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->u(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$6;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->v(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 456
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->g()V

    move v0, v1

    .line 457
    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    return-object v0
.end method
