.class final Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$1;->a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment$1;->a:Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 73
    const-string v2, "fragment_show_home"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    if-eqz v2, :cond_0

    .line 75
    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 76
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e()V

    .line 77
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->f()V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/ShowPhotosFragment;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
