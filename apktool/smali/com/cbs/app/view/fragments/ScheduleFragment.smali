.class public Lcom/cbs/app/view/fragments/ScheduleFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/widget/HorizontalScrollViewListener;


# static fields
.field protected static final h:Ljava/lang/String;

.field private static m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field i:Lcom/cbs/app/widget/ScheduleGridLayout;

.field j:Z

.field k:Lcom/cbs/app/androiddata/ResponseModelListener;

.field l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private final n:Lcom/cbs/app/view/BackButtonListener;

.field private o:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

.field private p:Lcom/cbs/app/widget/ObservableHorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/cbs/app/view/fragments/ScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->h:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/cbs/app/view/fragments/ScheduleFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ScheduleFragment$1;-><init>(Lcom/cbs/app/view/fragments/ScheduleFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->n:Lcom/cbs/app/view/BackButtonListener;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->j:Z

    .line 77
    new-instance v0, Lcom/cbs/app/view/fragments/ScheduleFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ScheduleFragment$2;-><init>(Lcom/cbs/app/view/fragments/ScheduleFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->k:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 97
    new-instance v0, Lcom/cbs/app/view/fragments/ScheduleFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/ScheduleFragment$3;-><init>(Lcom/cbs/app/view/fragments/ScheduleFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->setRetainInstance(Z)V

    .line 110
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 368
    .line 369
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 370
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 371
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 372
    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 373
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 374
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 375
    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 376
    sub-int v1, v4, v2

    .line 377
    mul-int/lit8 v1, v1, 0x2

    .line 378
    sub-int v2, v5, v3

    .line 380
    const/16 v3, 0x19

    if-lt v2, v3, :cond_2

    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 386
    :cond_0
    :goto_0
    if-gez v1, :cond_3

    .line 390
    :cond_1
    :goto_1
    return v0

    .line 382
    :cond_2
    if-gez v2, :cond_0

    .line 383
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/ScheduleFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 395
    const-string v0, "20:00"

    .line 396
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 397
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 398
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 399
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 400
    div-int/lit8 v0, p0, 0x2

    add-int/2addr v0, v2

    .line 401
    rem-int/lit8 v2, p0, 0x2

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v2, v3

    .line 403
    const/16 v3, 0x37

    if-le v2, v3, :cond_2

    .line 405
    add-int/lit8 v0, v0, 0x1

    .line 408
    :goto_0
    if-nez v1, :cond_1

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_0
    :goto_1
    return-object v0

    .line 411
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/ScheduleFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/ScheduleFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/cbs/app/widget/ObservableHorizontalScrollView;II)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->o:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->o:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->o:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    invoke-virtual {v1}, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->p:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    invoke-virtual {v0, p2, p3}, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->scrollTo(II)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->p:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    if-ne p1, v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->o:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    invoke-virtual {v0, p2, p3}, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public getTonightData()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Lcom/cbs/app/service/TonightServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/TonightServiceImpl;-><init>()V

    .line 262
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->k:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/service/TonightService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 263
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 33

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getTonightData()V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 144
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->c:Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/MainApplication;->getScreenWidth()D

    move-result-wide v2

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/MainApplication;->getDensityDpi()I

    .line 151
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    const-wide v4, 0x4014666666666666L    # 5.1

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 154
    const v2, 0x7f03006e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 155
    const v2, 0x7f0f01d1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/widget/ScheduleGridLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/16 v4, 0x258

    invoke-virtual {v2, v4}, Lcom/cbs/app/widget/ScheduleGridLayout;->setSize(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v2, v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->setViewHandle(Landroid/view/View;)V

    move-object/from16 v30, v3

    .line 172
    :goto_0
    const v2, 0x7f0f01bd

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->o:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->o:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->setScrollViewListener(Lcom/cbs/app/widget/HorizontalScrollViewListener;)V

    .line 174
    const v2, 0x7f0f01d0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->p:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->p:Lcom/cbs/app/widget/ObservableHorizontalScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/cbs/app/widget/ObservableHorizontalScrollView;->setScrollViewListener(Lcom/cbs/app/widget/HorizontalScrollViewListener;)V

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 179
    if-eqz v5, :cond_3

    .line 180
    const-string v2, "allShows"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 183
    const-string v2, "episodeSchedule"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 184
    if-eqz v6, :cond_2

    .line 185
    array-length v7, v6

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v2, v6, v3

    .line 186
    check-cast v2, Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 158
    :cond_0
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 161
    const v2, 0x7f03006f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 162
    const v2, 0x7f0f01d1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/widget/ScheduleGridLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/16 v4, 0x2d0

    invoke-virtual {v2, v4}, Lcom/cbs/app/widget/ScheduleGridLayout;->setSize(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v2, v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->setViewHandle(Landroid/view/View;)V

    move-object/from16 v30, v3

    goto/16 :goto_0

    .line 167
    :cond_1
    const v2, 0x7f03006d

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 168
    const v2, 0x7f0f01d1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/widget/ScheduleGridLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    const/16 v4, 0x140

    invoke-virtual {v2, v4}, Lcom/cbs/app/widget/ScheduleGridLayout;->setSize(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v2, v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->setViewHandle(Landroid/view/View;)V

    move-object/from16 v30, v3

    goto/16 :goto_0

    .line 189
    :cond_2
    const-string v2, "specials"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->j:Z

    if-eqz v2, :cond_4

    .line 199
    sget-object v2, Lcom/cbs/app/view/fragments/ScheduleFragment;->m:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->setTonightEpisodes(Ljava/util/ArrayList;)V

    .line 201
    :cond_4
    const/4 v3, 0x0

    .line 202
    const-string v2, "20:00"

    .line 204
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    move-object v8, v3

    move-object v3, v2

    :cond_5
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/view/model/Episode;

    .line 208
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getStartTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    .line 209
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getStartTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 210
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 211
    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 216
    const/16 v4, 0x14

    if-lt v5, v4, :cond_5

    const/16 v4, 0x17

    if-ge v5, v4, :cond_5

    .line 219
    if-eqz v8, :cond_6

    .line 221
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getAirDate_sec()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/cbs/app/view/model/Episode;->getAirDate_sec()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x5dc

    cmp-long v4, v10, v12

    if-ltz v4, :cond_5

    .line 226
    :cond_6
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getEndTime()Ljava/lang/String;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_7

    .line 227
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getEndTime()Ljava/lang/String;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 228
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 229
    const/4 v9, 0x1

    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 230
    const/16 v9, 0x17

    if-lt v7, v9, :cond_7

    const/16 v7, 0xa

    if-le v4, v7, :cond_7

    .line 231
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getStartTime()Ljava/lang/String;

    move-result-object v4

    const-string v7, "23:00:00"

    invoke-static {v4, v7}, Lcom/cbs/app/view/fragments/ScheduleFragment;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 232
    mul-int/lit8 v4, v4, 0x1e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cbs/app/view/model/Episode;->setDuration(Ljava/lang/String;)V

    .line 236
    :cond_7
    const/4 v4, 0x0

    .line 237
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8

    .line 238
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 239
    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 241
    :cond_8
    const/16 v7, 0x14

    if-ne v5, v7, :cond_9

    const/16 v5, 0x19

    if-lt v6, v5, :cond_a

    :cond_9
    const/16 v5, 0x17

    if-lt v4, v5, :cond_f

    .line 243
    :cond_a
    const-string v13, "20:00"

    .line 246
    :goto_3
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/cbs/app/view/fragments/ScheduleFragment;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v32

    .line 247
    if-lez v32, :cond_b

    .line 1419
    if-eqz v8, :cond_c

    .line 1420
    new-instance v3, Lcom/cbs/app/view/model/Episode;

    const-string v4, "Please check your local listings for more information."

    const-string v5, "0"

    const-string v6, "Please check your local listings for more information."

    invoke-virtual {v8}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cbs/app/view/utils/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cbs/app/view/utils/Util;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    move/from16 v0, v32

    invoke-static {v0, v13}, Lcom/cbs/app/view/fragments/ScheduleFragment;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    mul-int/lit8 v15, v32, 0x1e

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const-string v17, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v3 .. v29}, Lcom/cbs/app/view/model/Episode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v4, v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/view/model/Episode;)V

    .line 251
    :cond_b
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Episode;->getEndTime()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v32

    invoke-static {v0, v3}, Lcom/cbs/app/view/fragments/ScheduleFragment;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->i:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v4, v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/view/model/Episode;)V

    move-object v8, v2

    .line 254
    goto/16 :goto_2

    .line 1425
    :cond_c
    new-instance v3, Lcom/cbs/app/view/model/Episode;

    const-string v4, "Please check your local listings for more information."

    const-string v5, "0"

    const-string v6, "Please check your local listings for more information."

    invoke-static {}, Lcom/cbs/app/view/utils/Util;->getCurrentDateString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sunday"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    move/from16 v0, v32

    invoke-static {v0, v13}, Lcom/cbs/app/view/fragments/ScheduleFragment;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    mul-int/lit8 v15, v32, 0x1e

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const-string v17, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v3 .. v29}, Lcom/cbs/app/view/model/Episode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2337
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v2, v2, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v2, :cond_e

    .line 2338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v2, Lcom/cbs/app/view/NavigationActivity;

    .line 2339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cbs/app/view/fragments/ScheduleFragment;->n:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v2, v3}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 256
    :cond_e
    return-object v30

    :cond_f
    move-object v13, v3

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 322
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 3345
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 3346
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 3347
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->n:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 316
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 308
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 279
    sget-object v0, Lcom/cbs/app/analytics/Action;->v:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/ScheduleFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 280
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 288
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 3113
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 3114
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 3115
    const-wide/16 v2, -0x1

    const-string v1, "fragment_schedule"

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStart()V

    .line 275
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStop()V

    .line 302
    return-void
.end method
