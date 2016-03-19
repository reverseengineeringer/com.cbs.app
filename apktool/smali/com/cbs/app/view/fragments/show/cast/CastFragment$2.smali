.class final Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/cast/CastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    .line 101
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->b(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->c(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->d(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->e(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->f(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    :cond_1
    :goto_0
    move v0, v1

    .line 145
    :cond_2
    :goto_1
    return v0

    .line 105
    :pswitch_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 107
    const-string v2, "fragment_show_home"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    if-eqz v2, :cond_3

    .line 109
    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 110
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e()V

    .line 111
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->f()V

    :cond_3
    move v0, v1

    .line 114
    goto :goto_1

    .line 116
    :pswitch_1
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V

    goto :goto_0

    .line 126
    :pswitch_3
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->a()V

    goto :goto_0

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->h(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->i(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 137
    const-string v2, "fragment_show_home"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    if-eqz v2, :cond_1

    .line 139
    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 140
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->e()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
