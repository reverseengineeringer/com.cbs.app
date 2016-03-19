.class public Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/FrameLayout;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 33
    const-string v0, "Episode Comments"

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0xd431

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    const-string v1, "articleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->c:Ljava/lang/String;

    .line 46
    const-string v1, "articleTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->d:Ljava/lang/String;

    .line 47
    const-string v1, "showCategory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->f:Ljava/lang/String;

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 54
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->a:Landroid/widget/FrameLayout;

    .line 65
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->setContentView(Landroid/view/View;)V

    .line 1087
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1088
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1090
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1091
    const-string v2, "articleId"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v2, "showCategory"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-class v2, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1094
    const-string v2, "fragment_episode_comments"

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1095
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1096
    :goto_1
    return-void

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1097
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1099
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1100
    const-string v2, "You must pass a navItem and an article id."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    const-string v0, "DONE"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 111
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 124
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 126
    return v0

    .line 120
    :sswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->finish()V

    .line 122
    :sswitch_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsActivity;->finish()V

    goto :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 74
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->c()V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 80
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->b()V

    .line 82
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 83
    return-void
.end method
