.class public Lcom/cbs/app/view/fragments/show/cast/CastFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;

.field private static k:Landroid/net/Uri;

.field private static l:Landroid/net/Uri;


# instance fields
.field public h:Z

.field i:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private m:Lcom/cbs/app/view/model/Show;

.field private n:Landroid/view/LayoutInflater;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/view/View;

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/google/android/gms/common/api/b;

.field private u:Lcom/cbs/app/view/model/DeviceCast;

.field private v:Z

.field private w:Lcom/cbs/app/view/BackButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-class v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->j:Ljava/lang/String;

    .line 51
    sput-object v1, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->k:Landroid/net/Uri;

    .line 52
    sput-object v1, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->l:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->h:Z

    .line 55
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->n:Landroid/view/LayoutInflater;

    .line 56
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->o:Landroid/view/ViewGroup;

    .line 57
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    .line 58
    iput v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->q:I

    .line 59
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    .line 63
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    .line 64
    new-instance v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 91
    new-instance v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->w:Lcom/cbs/app/view/BackButtonListener;

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->setRetainInstance(Z)V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/cast/CastFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    return-object p1
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->h()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    .line 396
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    const v1, 0x7f0f00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 399
    check-cast v0, Landroid/view/ViewGroup;

    .line 400
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 402
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 404
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v4, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v5, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 405
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 406
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 408
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 409
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 410
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 411
    const/4 v4, 0x0

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/cast/CastFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->q:I

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->i()V

    return-void
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    iput v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->q:I

    .line 425
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 426
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 428
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 429
    const-string v2, "deviceCastList"

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 430
    const-string v2, "deviceHostList"

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 432
    new-instance v2, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;-><init>()V

    .line 433
    invoke-virtual {v2, v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 436
    const v0, 0x7f0f00d4

    .line 437
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    :cond_2
    const v0, 0x7f0f00d3

    .line 445
    :cond_3
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 446
    if-eqz v3, :cond_4

    .line 447
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 448
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 452
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    if-nez v0, :cond_7

    .line 455
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->r:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V

    .line 460
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 462
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    if-nez v0, :cond_8

    .line 463
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V

    .line 476
    :cond_6
    :goto_1
    return-void

    .line 457
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V

    goto :goto_0

    .line 465
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V

    goto :goto_1

    .line 472
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    .line 473
    const-string v0, "No Cast Members"

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic i(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const v3, 0x7f0f00d3

    .line 483
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->q:I

    .line 484
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 487
    const-string v1, "deviceCast"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 488
    new-instance v1, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;-><init>()V

    .line 489
    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->setArguments(Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 492
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 493
    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 495
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 498
    :cond_0
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .prologue
    const v3, 0x7f0f00d3

    .line 312
    .line 2505
    const/4 v0, 0x2

    iput v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->q:I

    .line 2506
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    if-eqz v0, :cond_0

    .line 2507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2508
    const-string v1, "deviceCast"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2510
    new-instance v1, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;-><init>()V

    .line 2511
    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2512
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2513
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2515
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2516
    if-eqz v2, :cond_0

    .line 2517
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2518
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 313
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    .line 391
    const-string v0, "Unable to retrieve the data for this view. Please try again later."

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->a(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->n:Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 268
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    .line 273
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->h()V

    .line 275
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 162
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    .line 163
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->c:Z

    .line 171
    :cond_1
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->n:Landroid/view/LayoutInflater;

    .line 172
    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->o:Landroid/view/ViewGroup;

    .line 173
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->n:Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->o:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    .line 1283
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 1285
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->w:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 176
    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    .line 177
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_3

    .line 1382
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1383
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->d(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 182
    :cond_3
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/appindexing/b;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->t:Lcom/google/android/gms/common/api/b;

    .line 183
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 2291
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2293
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->w:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 248
    :cond_0
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    .line 249
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->n:Landroid/view/LayoutInflater;

    .line 250
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->o:Landroid/view/ViewGroup;

    .line 251
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 257
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/cbs/app/analytics/Action;->l:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 189
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->e:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->f:Ljava/lang/String;

    .line 193
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    .line 205
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStart()V

    .line 218
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->t:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 219
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    const-string v1, "cast"

    invoke-static {v0, v3, v1}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    const-string v2, "cast"

    invoke-static {v1, v3, v2}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->b(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 223
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->k:Landroid/net/Uri;

    .line 225
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->l:Landroid/net/Uri;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cast - CBS.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->t:Lcom/google/android/gms/common/api/b;

    sget-object v3, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->k:Landroid/net/Uri;

    sget-object v4, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->l:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 235
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStop()V

    .line 210
    sget-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->t:Lcom/google/android/gms/common/api/b;

    sget-object v2, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->k:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 211
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->t:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V

    .line 212
    return-void
.end method

.method public setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V
    .locals 7

    .prologue
    const v6, 0x7f0f00d8

    const v5, 0x7f0f00d7

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDeviceCast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/DeviceCast;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/DeviceCast;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->v:Z

    if-eqz v0, :cond_1

    .line 324
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    .line 326
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 327
    const-string v0, "deviceCast"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    const-string v0, "show"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->i()V

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->p:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 337
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 341
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->u:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_3

    .line 344
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_3
    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 350
    new-instance v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;-><init>()V

    .line 351
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->setArguments(Landroid/os/Bundle;)V

    .line 352
    const-string v3, "castmember_combo_fragment"

    invoke-virtual {v2, v5, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 354
    new-instance v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;-><init>()V

    .line 355
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 356
    const-string v1, "castmember_tweet_fragment"

    invoke-virtual {v2, v6, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 369
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 360
    :cond_4
    new-instance v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;-><init>()V

    .line 361
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 362
    const-string v3, "castmember_image_fragment"

    invoke-virtual {v2, v5, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 364
    new-instance v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;

    invoke-direct {v0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;-><init>()V

    .line 365
    const-string v3, "showImage"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/cast/CastMemberComboFragment;->setArguments(Landroid/os/Bundle;)V

    .line 367
    const-string v1, "castmember_bio_fragment"

    invoke-virtual {v2, v6, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method
