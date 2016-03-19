.class final Lcom/cbs/app/view/fragments/settings/AppVersionFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/AppVersionFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/AppVersionFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment$1;->a:Lcom/cbs/app/view/fragments/settings/AppVersionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment$1;->a:Lcom/cbs/app/view/fragments/settings/AppVersionFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->J(Landroid/content/Context;)V

    .line 68
    return-void
.end method
