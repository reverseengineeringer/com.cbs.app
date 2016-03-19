.class public Lcom/cbs/app/view/ShowSearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;


# instance fields
.field private a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/ShowSearchActivity;)Lcom/cbs/app/view/fragments/show/ShowSearchFragment;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity;->a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    return-object v0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 89
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateIwantToSeePosition() called with: position = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    return-void
.end method

.method public final a(I[Ljava/lang/String;Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;)V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayIwantToSeeDialog() called with: currentSelection = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], selections = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], response = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    return-void
.end method

.method public final a(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showItemSelected() called with: showSelected = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-string v1, "showItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/cbs/app/view/ShowSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->finish()V

    .line 143
    return-void
.end method

.method public final c(Lcom/cbs/app/view/BackButtonListener;)V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onShowsDestroyed() called with: backButtonListener = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 79
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/ShowSearchActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "search_results"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    iput-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity;->a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    .line 42
    iget-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity;->a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity;->a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    .line 44
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 45
    const v1, 0x7f0f00a1

    iget-object v2, p0, Lcom/cbs/app/view/ShowSearchActivity;->a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    const-string v3, "search_results"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/ShowSearchActivity;->a(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 100
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/ShowSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 103
    const v1, 0x7f0f03d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 104
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 106
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 108
    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->requestFocusFromTouch()Z

    .line 109
    const v0, 0x7fffffff

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 110
    new-instance v0, Lcom/cbs/app/view/ShowSearchActivity$1;

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/view/ShowSearchActivity$1;-><init>(Lcom/cbs/app/view/ShowSearchActivity;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    invoke-static {p1}, Lcom/cbs/app/view/ShowSearchActivity;->a(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->finish()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity;->a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/ShowSearchActivity;->a:Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/view/ShowSearchActivity;->finish()V

    goto :goto_0
.end method
