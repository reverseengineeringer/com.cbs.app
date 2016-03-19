.class public Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Lcom/cbs/app/service/LiveFyreService;

.field c:Landroid/widget/ProgressBar;

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:Z

.field i:Landroid/app/AlertDialog;

.field j:Ljava/lang/String;

.field k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

.field l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    .line 68
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->f:I

    .line 70
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->g:Z

    .line 71
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->h:Z

    .line 72
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->i:Landroid/app/AlertDialog;

    .line 73
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->n:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    .line 126
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$5;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$5;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 141
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v2, -0x2

    .line 277
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 278
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c:Landroid/widget/ProgressBar;

    .line 283
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    return-void
.end method

.method private g()Landroid/view/View;
    .locals 12

    .prologue
    const v11, 0x7f0f0012

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 658
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 659
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    .line 660
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 661
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 662
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 665
    :cond_1
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setId(I)V

    .line 666
    const/16 v4, 0x33

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 667
    const-string v4, "Enter post text here."

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 668
    const v4, 0x7f020201

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 669
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const-wide v6, 0x4062c00000000000L    # 150.0

    invoke-static {v1, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 670
    invoke-virtual {v4, v0, v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 671
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 672
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 674
    const v3, 0x7f030097

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 676
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 678
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 679
    if-eqz v3, :cond_3

    .line 680
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 682
    const v0, 0x7f0f0268

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 684
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->f:I

    const/16 v4, 0x1f4

    if-ge v1, v4, :cond_2

    .line 685
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 687
    :cond_2
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$11;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    :cond_3
    const v0, 0x7f0f0266

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 740
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    if-ne v1, v9, :cond_4

    .line 742
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 746
    :goto_0
    const v0, 0x7f0f0267

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 747
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 749
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 753
    :goto_1
    return-object v2

    .line 744
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 751
    :cond_5
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 219
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 222
    const/4 v4, 0x0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const-string v4, "articleId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    if-nez v0, :cond_1

    .line 228
    if-eqz v4, :cond_1

    .line 230
    new-instance v0, Lcom/cbs/app/service/LiveFyreService;

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/LiveFyreService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    .line 233
    :cond_1
    if-eqz v3, :cond_7

    .line 235
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0, v3}, Lcom/cbs/app/service/LiveFyreService;->setLiveFyreToken(Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c()V

    .line 270
    :cond_3
    :goto_0
    return-void

    .line 245
    :cond_4
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->g:Z

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 249
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c()V

    goto :goto_0

    .line 253
    :cond_5
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->f()V

    .line 254
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getData()V

    goto :goto_0

    .line 258
    :cond_6
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->f()V

    .line 259
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getData()V

    goto :goto_0

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    if-eqz v0, :cond_3

    .line 266
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->f()V

    .line 267
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getData()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 814
    iput-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->j:Ljava/lang/String;

    .line 815
    iput-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 816
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 817
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0b00e9

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0300ad

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "Reply"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    new-instance v3, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$2;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Post"

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 832
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->i:Landroid/app/AlertDialog;

    .line 833
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->i:Landroid/app/AlertDialog;

    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 898
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->h:Z

    if-nez v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 900
    iput-boolean v5, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->h:Z

    .line 902
    :cond_0
    return-void

    .line 818
    :cond_1
    const-string v0, "Post"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 443
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$7;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c()V

    .line 308
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 474
    .line 2478
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;Z)V

    .line 2555
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v1, p1, v0}, Lcom/cbs/app/service/LiveFyreService;->a(Ljava/lang/String;Lcom/c/a/a/e;)V

    .line 475
    return-void
.end method

.method public final c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0f000b

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 316
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Lcom/cbs/app/service/LiveFyreService;->getComments()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0}, Lcom/cbs/app/service/LiveFyreService;->getComments()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 319
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    .line 321
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->c:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 326
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->g()Landroid/view/View;

    move-result-object v2

    .line 327
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 330
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 331
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-direct {v1, v0, v2}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;-><init>(Landroid/content/Context;Lcom/cbs/app/service/LiveFyreService;)V

    .line 336
    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 337
    instance-of v2, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d()V

    .line 342
    :cond_1
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 344
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 345
    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 348
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030064

    invoke-virtual {v0, v3, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "comments list view footer count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 352
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 353
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 356
    :cond_2
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$6;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->setCommentListener(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;)V

    .line 430
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 433
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 434
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 563
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$9;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 771
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 773
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 774
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    .line 775
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 776
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 777
    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 778
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 779
    const-string v2, "We are unable to get the comments data.  Please try again later."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 574
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V

    .line 653
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/cbs/app/service/LiveFyreService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/c/a/a/e;)V

    .line 654
    return-void
.end method

.method public getData()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const v8, 0x7f0f000b

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 291
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 292
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 296
    if-eqz v4, :cond_1

    .line 297
    const-string v5, "articleId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    :goto_0
    if-eqz v4, :cond_0

    .line 300
    new-instance v0, Lcom/cbs/app/service/LiveFyreService;

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/LiveFyreService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    .line 304
    :goto_1
    return-void

    .line 1788
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1789
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    .line 1790
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1792
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->g()Landroid/view/View;

    move-result-object v2

    .line 1793
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1795
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1796
    invoke-virtual {v2, v8}, Landroid/view/View;->setId(I)V

    .line 1797
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1798
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1801
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1803
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1804
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1805
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1806
    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1807
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1808
    const-string v0, "There are no comments for this video. Please check back later."

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 149
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    .line 162
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 164
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a:Landroid/widget/RelativeLayout;

    .line 213
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 214
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    .line 1719
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->i:Z

    .line 203
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    const/4 v4, 0x0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const-string v1, "articleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    :cond_0
    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 184
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 186
    new-instance v0, Lcom/cbs/app/service/LiveFyreService;

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->k:Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/LiveFyreService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    .line 1714
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->i:Z

    goto :goto_0
.end method
