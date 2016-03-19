.class public Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;
    }
.end annotation


# static fields
.field public static h:Z

.field private static final n:Ljava/lang/String;

.field private static o:I


# instance fields
.field i:Landroid/widget/TabHost;

.field j:Landroid/support/v4/view/ViewPager;

.field k:Z

.field l:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field m:Landroid/widget/TabHost$OnTabChangeListener;

.field private final p:Lcom/cbs/app/view/BackButtonListener;

.field private q:Z

.field private r:Landroid/widget/RelativeLayout;

.field private s:Lcom/cbs/app/view/menu/DrawerStatusListener;

.field private t:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->n:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    .line 55
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$1;-><init>(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->p:Lcom/cbs/app/view/BackButtonListener;

    .line 85
    iput-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    .line 86
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->k:Z

    .line 87
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$2;-><init>(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->l:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 110
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->q:Z

    .line 111
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$3;-><init>(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->m:Landroid/widget/TabHost$OnTabChangeListener;

    .line 126
    iput-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->r:Landroid/widget/RelativeLayout;

    .line 127
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$4;-><init>(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->s:Lcom/cbs/app/view/menu/DrawerStatusListener;

    .line 146
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$5;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$5;-><init>(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->t:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;

    .line 162
    invoke-virtual {p0, v1}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->setRetainInstance(Z)V

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic c(I)I
    .locals 0

    .prologue
    .line 46
    sput p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->o:I

    return p0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private d(I)Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentPagerAdapter;

    .line 167
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android:switcher:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 480
    if-nez p1, :cond_1

    .line 481
    sget-object v0, Lcom/cbs/app/analytics/Action;->y:Lcom/cbs/app/analytics/Action;

    .line 482
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 483
    const-string v2, "pageView"

    const-string v3, "anything"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    sget-object v0, Lcom/cbs/app/analytics/Action;->x:Lcom/cbs/app/analytics/Action;

    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 492
    const-string v2, "pageView"

    const-string v3, "anything"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 436
    .line 438
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_7

    .line 440
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 441
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 442
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f0f0010

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 447
    :goto_0
    if-eqz p1, :cond_4

    .line 448
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    :cond_0
    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    :cond_1
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->q:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    sput v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->o:I

    .line 469
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 472
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 455
    goto :goto_1

    .line 458
    :cond_4
    if-eqz v1, :cond_5

    .line 459
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 462
    :cond_5
    if-eqz v0, :cond_6

    .line 463
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    :cond_6
    const/4 v0, 0x2

    sput v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->o:I

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 501
    if-nez p1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 504
    const-string v1, "fragment_my_shows_cbs"

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 509
    const-string v1, "recently_watched_fragment"

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->setHasOptionsMenu(Z)V

    .line 180
    instance-of v0, p1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/cbs/app/view/NavigationActivity;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->s:Lcom/cbs/app/view/menu/DrawerStatusListener;

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/NavigationActivity;->setDrawerStatusListner(Lcom/cbs/app/view/menu/DrawerStatusListener;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .prologue
    const v5, 0x7f0f0009

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    const/4 v0, 0x0

    .line 355
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 356
    sput v4, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->o:I

    .line 358
    :cond_0
    sget v1, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->o:I

    packed-switch v1, :pswitch_data_0

    .line 369
    :goto_0
    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 372
    :cond_1
    sget-boolean v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->h:Z

    if-eqz v0, :cond_2

    .line 373
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 375
    :cond_2
    return-void

    .line 360
    :pswitch_0
    const/16 v0, 0xa

    const-string v1, "Edit"

    invoke-interface {p1, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    .line 363
    :pswitch_1
    const v0, 0x7f0f0008

    const/16 v1, 0x14

    const-string v2, "Done"

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    .line 366
    :pswitch_2
    const v0, 0x7f0f0006

    const/16 v1, 0x1e

    const-string v2, "Clear History"

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 195
    .line 1521
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1523
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->p:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 199
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->r:Landroid/widget/RelativeLayout;

    .line 202
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->r:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 203
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->r:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 2530
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2533
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->p:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d()V

    .line 230
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d()V

    .line 235
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->r:Landroid/widget/RelativeLayout;

    .line 239
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 395
    :pswitch_0
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 3402
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 3403
    if-eqz v0, :cond_0

    .line 3404
    check-cast v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    .line 3405
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->h()V

    .line 383
    :cond_0
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->q:Z

    move v0, v2

    .line 385
    goto :goto_0

    .line 3411
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 3412
    if-eqz v0, :cond_1

    .line 3413
    check-cast v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    .line 3414
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g()Z

    move-result v0

    .line 387
    :goto_1
    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->q:Z

    move v0, v2

    .line 389
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3416
    goto :goto_1

    .line 3420
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 3421
    if-eqz v0, :cond_2

    .line 3422
    check-cast v0, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    .line 3423
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;->a()V

    :cond_2
    move v0, v2

    .line 393
    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x7f0f0006
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 220
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/cbs/app/view/AbstractAsyncFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2244
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2247
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_2

    .line 2248
    new-instance v0, Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    .line 2249
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setId(I)V

    .line 2251
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2252
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2253
    new-instance v0, Landroid/widget/TabWidget;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 2254
    const v3, 0x1020013

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setId(I)V

    .line 2255
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 2256
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 2257
    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2258
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2300
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2301
    const v3, 0x1020011

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 2302
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2303
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2304
    new-instance v0, Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    .line 2306
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 2308
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 2309
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2311
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v5, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    .line 2312
    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->t:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;

    invoke-virtual {v0, v5}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->setMenuChangeListener(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;)V

    .line 2314
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2315
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v5, Lcom/cbs/app/view/fragments/mycbs/MyRecentlyWatchedFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2316
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/FragmentsPagerAdapter;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/cbs/app/view/fragments/mycbs/FragmentsPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 2317
    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2318
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->l:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2320
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2321
    const/16 v3, 0x50

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2322
    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2323
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/TabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2325
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 2327
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    const-string v2, "My Shows"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 2328
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300be

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2329
    if-eqz v3, :cond_0

    .line 2330
    const v0, 0x7f0f02ba

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2331
    const-string v4, "My Shows"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2333
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 2334
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v3}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 2335
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2336
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    const-string v2, "Recently Watched"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 2337
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300be

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2338
    if-eqz v3, :cond_1

    .line 2339
    const v0, 0x7f0f02ba

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2340
    const-string v4, "Recently Watched"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2341
    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 2344
    :cond_1
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v3}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 2345
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2346
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->m:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2347
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->r:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->i:Landroid/widget/TabHost;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->k:Z

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a(I)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->b(I)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->a(Z)V

    .line 215
    return-void

    .line 2260
    :cond_3
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2261
    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2262
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    invoke-static {v5, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2264
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2265
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2266
    new-instance v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2267
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setWidth(I)V

    .line 2268
    const v4, 0x7f0f0011

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setId(I)V

    .line 2269
    const-string v4, "EDIT"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2270
    const v4, 0x7f0200ac

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2271
    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2272
    const v4, -0xd7d7d8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 2273
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2276
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v8, 0x4045000000000000L    # 42.0

    invoke-static {v6, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2278
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2279
    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v5, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v5

    iget-object v6, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    iget-object v7, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v7, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v7

    iget-object v8, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v10, v11}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2280
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2281
    new-instance v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2283
    const v4, 0x7f0f0010

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setId(I)V

    .line 2285
    const-string v4, "Clear History"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2286
    const/4 v4, 0x2

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2287
    const v4, 0x7f0200ac

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2288
    const-string v4, "#282828"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 2289
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2292
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v8, 0x4045000000000000L    # 42.0

    invoke-static {v6, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2294
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2295
    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v5, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v5

    iget-object v6, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    iget-object v7, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v7, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v7

    iget-object v8, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v10, v11}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2297
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2298
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v5, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
