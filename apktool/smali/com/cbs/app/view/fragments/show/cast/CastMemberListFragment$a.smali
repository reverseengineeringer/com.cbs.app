.class final Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)Lcom/cbs/app/adapter/DeviceCastAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)Lcom/cbs/app/adapter/DeviceCastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/adapter/DeviceCastAdapter;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 133
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->a()Ljava/lang/String;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)Lcom/cbs/app/adapter/DeviceCastAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cbs/app/adapter/DeviceCastAdapter;->setSelected(I)V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)Lcom/cbs/app/adapter/DeviceCastAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cbs/app/adapter/DeviceCastAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;->a:Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->b(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 141
    const-string v2, "fragment_show_home"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 144
    const-string v2, "fragment_show_cast"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    .line 145
    if-eqz v1, :cond_0

    .line 1304
    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V

    goto :goto_0
.end method
