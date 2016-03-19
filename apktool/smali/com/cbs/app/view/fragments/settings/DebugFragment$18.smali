.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$18;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 685
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 687
    const-string v0, "/all-access/upsell-video/"

    .line 688
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$18;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    const-string v0, "/all-access/upsell-video/"

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$18;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$18;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "10"

    const-string v3, "250474E2-10D7-3C65-81D1-FD0168A60E99"

    invoke-static {v1, v0, v2, v3}, Lcom/cbs/app/service/SVODService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method
