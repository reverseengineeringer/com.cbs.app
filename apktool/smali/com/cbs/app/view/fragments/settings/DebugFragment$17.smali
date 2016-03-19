.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$17;
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
    .line 669
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$17;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$17;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    const-string v1, "pid"

    const-string v2, "paRqwt8NVE0y"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$17;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 678
    return-void
.end method
