.class final Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$5;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->c(I)I

    .line 151
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$5;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$5;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->e(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 154
    :cond_0
    return-void
.end method
