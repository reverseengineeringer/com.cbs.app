.class final Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;->b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;->b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;->b:Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment$2;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;->a(Lcom/cbs/app/livetv/fragment/MVPDSettingsLogOutFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    return-void
.end method
