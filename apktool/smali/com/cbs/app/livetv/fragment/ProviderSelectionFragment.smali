.class public Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;,
        Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

.field private e:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/SearchView;

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/ViewFlipper;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Z

.field private r:Landroid/widget/FrameLayout;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->m:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    .line 128
    return-void
.end method

.method private a(IILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .prologue
    .line 449
    invoke-virtual {p0, p2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 451
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 453
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v2, p3, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 454
    return-object v2
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0801ea

    const v7, 0x7f0801e9

    const/4 v6, 0x0

    .line 235
    const v0, 0x7f03008a

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->j:I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mSpanCount: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->k:I

    .line 240
    const v0, 0x7f0f0238

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->n:Landroid/widget/ViewFlipper;

    .line 241
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->setMode(I)V

    .line 244
    const v0, 0x7f0f0236

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->o:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f0f0237

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->p:Landroid/widget/TextView;

    .line 247
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    invoke-virtual {p0, v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->setIsTryAgain(Z)V

    .line 248
    const v0, 0x7f0f023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->i:Landroid/widget/SearchView;

    .line 251
    const v0, 0x7f0f0239

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->b:Landroid/support/v7/widget/RecyclerView;

    .line 252
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$1;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 260
    new-instance v0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;

    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->j:I

    iget v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->k:I

    invoke-direct {v0, v2, v3}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;-><init>(II)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->e:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;

    .line 261
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->j:I

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 262
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->e:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 263
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 265
    const v0, 0x7f0f023a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->f:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->f:Landroid/widget/TextView;

    const v2, 0x7f080182

    const v3, 0x7f080183

    new-instance v4, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$2;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-direct {p0, v2, v3, v4}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(IILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const v0, 0x7f0f023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    .line 276
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$3;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemGestureListener;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 284
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 285
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 287
    const v0, 0x7f0f023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$4;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-direct {p0, v7, v8, v2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(IILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v0, 0x7f0f023b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->h:Landroid/widget/TextView;

    .line 297
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    .line 298
    sget-object v2, Lcom/cbs/app/livetv/model/UserStatusEnum;->a:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v0, v2, :cond_1

    .line 299
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$5;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-direct {p0, v7, v8, v2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(IILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 319
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 320
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->i:Landroid/widget/SearchView;

    new-instance v2, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$6;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$6;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->i:Landroid/widget/SearchView;

    new-instance v2, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$7;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$7;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 346
    const v0, 0x7f0f0272

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 347
    new-instance v2, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$8;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$8;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->f()V

    .line 357
    return-object v1

    .line 305
    :cond_1
    sget-object v2, Lcom/cbs/app/livetv/model/UserStatusEnum;->b:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/cbs/app/livetv/model/UserStatusEnum;->d:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/cbs/app/livetv/model/UserStatusEnum;->e:Lcom/cbs/app/livetv/model/UserStatusEnum;

    if-ne v0, v2, :cond_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->h:Landroid/widget/TextView;

    const v2, 0x7f0801eb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;Z)Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;Z)",
            "Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;-><init>()V

    .line 133
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v2, "arg_mvpd_data"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 135
    const-string v2, "art_try_again"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3385
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3386
    const-string v1, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3387
    const-string v1, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3388
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cE:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 3390
    iput-boolean v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    .line 3479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toggleLayoutManager: isImageMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3480
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3481
    iput v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    .line 3487
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3488
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a()V

    .line 3492
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->n:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$9;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$9;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3393
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->b()V

    .line 72
    return-void

    .line 3483
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;I)V
    .locals 3

    .prologue
    .line 72
    .line 2459
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    .line 2462
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/cbs/app/adobepass/MvpdPickerActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2463
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2464
    const-string v2, "mvpd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2466
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 2467
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 2474
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 72
    return-void

    .line 2468
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemClicked: adobeId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x453

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 184
    const-string v2, "pageTitle"

    .line 1218
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    if-eqz v0, :cond_0

    .line 1219
    const-string v0, "live tv|provider|signin failed"

    .line 184
    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 2193
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    if-eqz v0, :cond_2

    .line 2194
    sget-object v0, Lcom/cbs/app/analytics/Action;->cY:Lcom/cbs/app/analytics/Action;

    .line 188
    :goto_1
    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 189
    return-void

    .line 1221
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "live tv|select tv provider"

    goto :goto_0

    :cond_1
    const-string v0, "live tv|more providers"

    goto :goto_0

    .line 2196
    :cond_2
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/cbs/app/analytics/Action;->cC:Lcom/cbs/app/analytics/Action;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/cbs/app/analytics/Action;->cF:Lcom/cbs/app/analytics/Action;

    goto :goto_1
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V
    .locals 3

    .prologue
    .line 72
    .line 4361
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x44f

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 4363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4364
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4365
    const-string v1, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4366
    const-string v1, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4367
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cH:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 72
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "liveTV|provider|signin_fail"

    .line 204
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "liveTV|provider|select grid"

    goto :goto_0

    :cond_1
    const-string v0, "liveTV|provider|search list"

    goto :goto_0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "provider_signinfail"

    .line 213
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "provider_select"

    goto :goto_0

    :cond_1
    const-string v0, "provider_search"

    goto :goto_0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    return-object v0
.end method

.method private f()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/16 v12, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 403
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 404
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 405
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindData: isImageMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayedChild = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", next displayed child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 407
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    iget v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->setMode(I)V

    .line 410
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a()V

    move v3, v5

    .line 413
    :goto_2
    if-ge v3, v2, :cond_4

    .line 414
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    .line 415
    iget v4, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getTier()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    .line 416
    :cond_0
    iget-object v4, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v4, v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a(Ljava/lang/Object;)V

    .line 413
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 404
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_1

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_5

    iget v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    if-ne v7, v0, :cond_5

    .line 422
    iget-object v8, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    new-instance v9, Lcom/cbs/app/view/model/MVPDConfig;

    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/g;

    const-string v2, "special_case"

    const-string v3, ""

    const-string v4, ""

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/adobepass/accessenabler/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-direct {v9, v0}, Lcom/cbs/app/view/model/MVPDConfig;-><init>(Lcom/adobe/adobepass/accessenabler/a/g;)V

    invoke-virtual {v8, v9}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a(Ljava/lang/Object;)V

    .line 425
    :cond_5
    iget v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    if-ne v7, v0, :cond_7

    .line 426
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->getItemCount()I

    move-result v0

    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->j:I

    rem-int/2addr v0, v2

    .line 427
    if-lez v0, :cond_6

    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->j:I

    sub-int v0, v2, v0

    :goto_3
    move v2, v5

    .line 428
    :goto_4
    if-ge v2, v0, :cond_7

    .line 429
    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v3, v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a(Ljava/lang/Object;)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move v0, v5

    .line 427
    goto :goto_3

    .line 434
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_9

    .line 435
    :goto_5
    if-nez v7, :cond_8

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->m:Z

    if-eqz v0, :cond_a

    .line 436
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    :goto_6
    return-void

    :cond_9
    move v7, v5

    .line 434
    goto :goto_5

    .line 439
    :cond_a
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 444
    :cond_b
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->n:Landroid/widget/ViewFlipper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_6
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V
    .locals 3

    .prologue
    .line 4371
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4372
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4373
    const-string v0, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4374
    const-string v0, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4375
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cbs/app/analytics/Action;->cD:Lcom/cbs/app/analytics/Action;

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 4378
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 4379
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->e()V

    .line 72
    :cond_0
    return-void

    .line 4375
    :cond_1
    sget-object v0, Lcom/cbs/app/analytics/Action;->cG:Lcom/cbs/app/analytics/Action;

    goto :goto_0
.end method

.method static synthetic g(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->f()V

    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 501
    iget v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 3

    .prologue
    .line 521
    const-string v0, "android_content_6"

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfoforActionTarget(Ljava/lang/String;)Lcom/cbs/app/view/model/UpsellInfo;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    .line 523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 528
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 229
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 230
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 143
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_mvpd_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    .line 153
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    .line 155
    iget-boolean v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->m:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getTier()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 156
    iput-boolean v6, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->m:Z

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "art_try_again"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    .line 164
    :cond_2
    if-eqz p1, :cond_3

    .line 165
    const-string v0, "KEY_LAYOUT_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    .line 169
    :goto_0
    new-instance v0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    .line 171
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->b()V

    .line 172
    return-void

    .line 148
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement BaseFragmentCallBack"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_3
    iput v6, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->l:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->r:Landroid/widget/FrameLayout;

    .line 177
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->r:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->r:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 399
    const-string v0, "KEY_LAYOUT_MODE"

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->getMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    return-void
.end method

.method public setIsTryAgain(Z)V
    .locals 2

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    .line 508
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 509
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->q:Z

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->o:Landroid/widget/TextView;

    const v1, 0x7f080275

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->o:Landroid/widget/TextView;

    const v1, 0x7f080220

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 514
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
