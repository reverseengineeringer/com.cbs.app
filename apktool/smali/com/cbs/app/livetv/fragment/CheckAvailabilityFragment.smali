.class public Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/cbs/app/view/model/MVPDConfig;

.field private j:Lcom/cbs/app/livetv/widget/ContentFlipper;

.field private k:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c:Z

    .line 77
    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    .line 79
    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->f:Z

    .line 80
    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    return-void
.end method

.method public static a(I)Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newInstance() called with: mode = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    new-instance v1, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;-><init>()V

    .line 111
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v1
.end method

.method public static a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newInstance() called with: mvpdConfig = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v1, "mvpd"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    new-instance v1, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;-><init>()V

    .line 121
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    return-object v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 510
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    const v1, 0x7f080173

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 512
    const v1, 0x7f080176

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$8;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$8;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080177

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$7;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080175

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$6;

    invoke-direct {v3, p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$6;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 542
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 11

    .prologue
    .line 235
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setContentView(Landroid/view/View;)V

    .line 236
    iget-object v5, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    .line 237
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 244
    :goto_0
    const v0, 0x7f0f01a6

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    const v1, 0x7f0f0271

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 246
    const v2, 0x7f0f01a7

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 247
    const v3, 0x7f0f01a8

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 249
    iget-boolean v4, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->e:Z

    if-nez v4, :cond_1

    new-instance v4, Landroid/text/SpannableStringBuilder;

    const v6, 0x7f080071

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x7f0801b5

    invoke-virtual {p0, v9}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x7f0801b2

    invoke-virtual {p0, v9}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const v9, 0x7f0801b8

    invoke-virtual {p0, v9}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    :goto_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    new-instance v7, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$2;

    invoke-direct {v7, p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    .line 267
    new-instance v8, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$3;

    invoke-direct {v8, p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    .line 276
    new-instance v9, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$4;

    invoke-direct {v9, p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    .line 285
    const v10, 0x7f0801b5

    invoke-direct {p0, v6, v10, v8, v4}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Ljava/lang/String;ILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;Landroid/text/SpannableStringBuilder;)V

    .line 286
    const v8, 0x7f0801b2

    invoke-direct {p0, v6, v8, v7, v4}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Ljava/lang/String;ILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;Landroid/text/SpannableStringBuilder;)V

    .line 287
    const v7, 0x7f0801b8

    invoke-direct {p0, v6, v7, v9, v4}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Ljava/lang/String;ILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;Landroid/text/SpannableStringBuilder;)V

    .line 290
    iget-boolean v6, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->e:Z

    if-nez v6, :cond_2

    .line 291
    const v6, 0x7f0800e5

    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Z)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f080114

    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f0801e7

    invoke-virtual {p0, v6}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 295
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 296
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 298
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    const v0, 0x7f0f0272

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 301
    new-instance v1, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :goto_2
    const v0, 0x7f0f01a9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v0, 0x7f0f01fc

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v0, 0x7f0f01fb

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v0, 0x7f0f0272

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v0, 0x7f0f01fd

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto/16 :goto_0

    .line 249
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f080114

    invoke-virtual {p0, v7}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0801e7

    invoke-virtual {p0, v7}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f080071

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0x7f0801b5

    invoke-virtual {p0, v10}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const v10, 0x7f0801b2

    invoke-virtual {p0, v10}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const v10, 0x7f0801b8

    invoke-virtual {p0, v10}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 308
    :cond_2
    const v1, 0x7f0800e7

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Z)V

    .line 310
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 311
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 312
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/cbs/app/livetv/widget/NoUnderlineClickableSpan;Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .prologue
    .line 494
    invoke-virtual {p0, p2}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 496
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {p4, p3, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 497
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v3, 0x21

    invoke-virtual {p4, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 499
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 503
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    const v1, 0x7f0f01aa

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 504
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    const v2, 0x7f0f01a9

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/widget/ContentFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 505
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 506
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    return-void

    :cond_0
    move v2, v4

    .line 505
    goto :goto_0

    :cond_1
    move v4, v3

    .line 506
    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3087
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChannelsAvailable() called with: | MvpdConfig = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3088
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-nez v0, :cond_1

    .line 3089
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 3090
    iput-boolean v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c:Z

    .line 3091
    iput-boolean v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    .line 3093
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3e9

    iget v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    iput-boolean v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c:Z

    .line 3097
    iput-boolean v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    .line 3099
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 3100
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x3f5

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->e()V

    .line 364
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Z)V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 367
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0, v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Z)V

    .line 370
    iput-boolean v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c:Z

    .line 371
    iput-boolean v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    .line 372
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->k:Lcom/cbs/app/livetv/controllers/SyncbakController;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cK:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 386
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->k:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->f()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h:I

    return v0
.end method

.method static synthetic f(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Lcom/cbs/app/livetv/widget/ContentFlipper;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 406
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 407
    const-string v2, "pageTitle"

    .line 2462
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    if-eqz v0, :cond_1

    .line 2463
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    .line 2464
    const-string v0, "live-tv|provider|unknown location"

    .line 407
    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v0, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v0, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v0, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_3

    .line 414
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->cR:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 425
    :goto_1
    return-void

    .line 2466
    :cond_0
    const-string v0, "live-tv|unknown location|modal"

    goto :goto_0

    .line 2469
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_2

    .line 2470
    const-string v0, "live-tv|provider|check availability"

    goto :goto_0

    .line 2472
    :cond_2
    const-string v0, "live-tv|check availability|modal"

    goto :goto_0

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->cM:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_1

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_5

    .line 420
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->cP:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_1

    .line 422
    :cond_5
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->cJ:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "liveTV|provider|unknown location"

    .line 439
    :goto_0
    return-object v0

    .line 433
    :cond_0
    const-string v0, "liveTV|upsell|unknown location"

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_2

    .line 437
    const-string v0, "liveTV|provider|availability"

    goto :goto_0

    .line 439
    :cond_2
    const-string v0, "liveTV|upsell|check availability"

    goto :goto_0
.end method

.method static synthetic g(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->f()V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "provider_unknown"

    .line 456
    :goto_0
    return-object v0

    .line 450
    :cond_0
    const-string v0, "livtv_unknown"

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_2

    .line 454
    const-string v0, "provider_availability"

    goto :goto_0

    .line 456
    :cond_2
    const-string v0, "livtv_availability"

    goto :goto_0
.end method

.method static synthetic h(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->f:Z

    return v0
.end method

.method static synthetic i(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Lcom/cbs/app/livetv/controllers/SyncbakController;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->k:Lcom/cbs/app/livetv/controllers/SyncbakController;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c()V

    return-void
.end method

.method static synthetic k(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 3

    .prologue
    .line 546
    const-string v0, "android_content_6"

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfoforActionTarget(Ljava/lang/String;)Lcom/cbs/app/view/model/UpsellInfo;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_1

    .line 548
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 549
    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v0, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 554
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 555
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v1, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-boolean v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    if-eqz v1, :cond_3

    .line 560
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v1, :cond_2

    .line 561
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cS:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 573
    :cond_1
    :goto_0
    return-void

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cN:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v1, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cQ:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0

    .line 569
    :cond_4
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cL:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick() called with: v = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1354
    :goto_0
    return-void

    .line 1344
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    .line 1345
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    .line 2060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 1346
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d()V

    .line 1348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1349
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    const-string v1, "evar_6"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const-string v1, "evar_10"

    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v1, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cT:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cO:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0

    .line 330
    :sswitch_1
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c()V

    goto :goto_0

    .line 333
    :sswitch_2
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 336
    :sswitch_3
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d()V

    goto :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x7f0f01a9 -> :sswitch_3
        0x7f0f01fc -> :sswitch_0
        0x7f0f01fd -> :sswitch_2
        0x7f0f0272 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 231
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onCreate() called with: savedInstanceState = ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "mode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h:I

    .line 132
    iget v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->h:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->e:Z

    .line 133
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "mvpd"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->i:Lcom/cbs/app/view/model/MVPDConfig;

    .line 135
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->e:Z

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c:Z

    .line 136
    iput-boolean v2, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    .line 137
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->k:Lcom/cbs/app/livetv/controllers/SyncbakController;

    .line 138
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->k:Lcom/cbs/app/livetv/controllers/SyncbakController;

    new-instance v1, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V

    .line 215
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->f()V

    .line 216
    return-void

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    :cond_1
    move v1, v2

    .line 135
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Lcom/cbs/app/livetv/widget/ContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03007c

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/livetv/widget/ContentFlipper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 223
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->j:Lcom/cbs/app/livetv/widget/ContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->k:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->c()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 482
    invoke-super {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onDestroy()V

    .line 483
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 490
    invoke-super {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onPause()V

    .line 491
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onResume()V

    .line 392
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-nez v0, :cond_0

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume: mCheckAvailabilitySelected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCheckingAvailability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 400
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->g:Z

    if-nez v0, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/CheckAvailabilityFragment;->d()V

    .line 403
    :cond_1
    return-void

    .line 396
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement BaseFragmentCallBack"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
