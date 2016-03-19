.class final Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastMemberBioFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 109
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 116
    const-string v1, "fragment_show_cast"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->e()V

    .line 124
    :cond_0
    return-void
.end method
