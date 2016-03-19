.class final Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/menu/DrawerStatusListener;


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
    .line 127
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$4;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 130
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    .line 133
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a()Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$4;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$4;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$4;->a:Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a(Z)V

    .line 144
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
