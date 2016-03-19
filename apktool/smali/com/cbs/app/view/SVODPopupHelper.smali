.class public final Lcom/cbs/app/view/SVODPopupHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field static b:Z

.field static c:Z

.field static d:Z

.field public static final e:Lcom/cbs/app/androiddata/ResponseModelListener;

.field public static final f:Lcom/cbs/app/androiddata/ResponseModelListener;

.field public static final g:Lcom/cbs/app/androiddata/ResponseModelListener;

.field public static final h:Lcom/cbs/app/androiddata/ResponseModelListener;

.field public static final i:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private static final j:Ljava/lang/String;

.field private static k:Landroid/content/Context;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Landroid/app/Dialog;

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private static u:Lcom/cbs/app/view/model/VideoData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    const-class v0, Lcom/cbs/app/view/SVODPopupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->j:Ljava/lang/String;

    .line 71
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 72
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->b:Z

    .line 73
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->c:Z

    .line 74
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->d:Z

    .line 75
    sput-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$1;

    invoke-direct {v0}, Lcom/cbs/app/view/SVODPopupHelper$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->e:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 95
    const-string v0, "Anonymous"

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    .line 96
    sput-object v2, Lcom/cbs/app/view/SVODPopupHelper;->m:Ljava/lang/String;

    .line 99
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->p:Z

    .line 105
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$12;

    invoke-direct {v0}, Lcom/cbs/app/view/SVODPopupHelper$12;-><init>()V

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->f:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 143
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$17;

    invoke-direct {v0}, Lcom/cbs/app/view/SVODPopupHelper$17;-><init>()V

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->g:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 177
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$18;

    invoke-direct {v0}, Lcom/cbs/app/view/SVODPopupHelper$18;-><init>()V

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 217
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->s:Z

    .line 218
    sput-object v2, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 219
    sput-object v2, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    .line 220
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$19;

    invoke-direct {v0}, Lcom/cbs/app/view/SVODPopupHelper$19;-><init>()V

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 570
    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->d:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->b()V

    .line 573
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->b:Z

    .line 574
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->c:Z

    .line 575
    sput-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->d:Z

    .line 577
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0x7f08021b

    .line 397
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 398
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 402
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 403
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    const v0, 0x7f03005b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 406
    const v0, 0x7f0f0194

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 407
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    :cond_1
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v2, Lcom/cbs/app/view/SVODPopupHelper$23;

    invoke-direct {v2, v1}, Lcom/cbs/app/view/SVODPopupHelper$23;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    :goto_1
    const v0, 0x7f0f0193

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 427
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->c()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 428
    :cond_2
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_2
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 416
    :cond_3
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    new-instance v2, Lcom/cbs/app/view/SVODPopupHelper$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/SVODPopupHelper$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 430
    :cond_4
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 527
    sput-object p0, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    .line 529
    if-nez p1, :cond_0

    .line 530
    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    .line 535
    :goto_0
    if-nez p2, :cond_1

    .line 536
    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 540
    :goto_1
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->q()V

    .line 542
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, " "

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v2, "aa_upsell_text1"

    const-string v3, " "

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v2, "aa_upsell_text2"

    const-string v3, " "

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v2, "sign_up_call_to_action"

    const-string v3, " "

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v3, Lcom/cbs/app/service/UpsellService;

    invoke-direct {v3}, Lcom/cbs/app/service/UpsellService;-><init>()V

    .line 552
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    const-string v2, "NATIVE_UPSELL_PHONE1"

    .line 554
    const-string v1, "NATIVE_UPSELL_PHONE2"

    .line 555
    const-string v0, "UPGRADE_EX_SUBSCRIBER_PHONE"

    .line 562
    :goto_2
    sget-object v4, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    sget-object v5, Lcom/cbs/app/view/SVODPopupHelper;->f:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v3, v4, v2, v5}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 563
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    sget-object v4, Lcom/cbs/app/view/SVODPopupHelper;->g:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v3, v2, v1, v4}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 564
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v3, v1, v0, v2}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 565
    return-void

    .line 532
    :cond_0
    sput-object p1, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    goto :goto_0

    .line 538
    :cond_1
    sput-object p2, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    goto :goto_1

    .line 556
    :cond_2
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 557
    const-string v2, "NATIVE_UPSELL_TABLET1"

    .line 558
    const-string v1, "NATIVE_UPSELL_TABLET2"

    .line 559
    const-string v0, "UPGRADE_EX_SUBSCRIBER_TABLET"

    goto :goto_2

    :cond_3
    move-object v1, v0

    move-object v2, v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 313
    sput-object p0, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    .line 314
    sput-object p1, Lcom/cbs/app/view/SVODPopupHelper;->m:Ljava/lang/String;

    .line 315
    const-string v1, "OK"

    .line 316
    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->p:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 317
    check-cast v0, Landroid/app/Activity;

    .line 318
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 320
    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 321
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x7f0b00e9

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/cbs/app/view/SVODPopupHelper$20;

    invoke-direct {v3}, Lcom/cbs/app/view/SVODPopupHelper$20;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/cbs/app/view/SVODPopupHelper$21;

    invoke-direct {v1}, Lcom/cbs/app/view/SVODPopupHelper$21;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 339
    new-instance v1, Lcom/cbs/app/view/SVODPopupHelper$22;

    invoke-direct {v1, v0, p0}, Lcom/cbs/app/view/SVODPopupHelper$22;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 390
    sput-boolean v5, Lcom/cbs/app/view/SVODPopupHelper;->p:Z

    .line 391
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 394
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 691
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 692
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_9

    .line 693
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v2

    .line 695
    new-instance v1, Landroid/app/Dialog;

    sget-object v3, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 696
    sput-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 697
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 698
    if-eqz v2, :cond_a

    .line 699
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v3, 0x7f03005c

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 704
    :goto_0
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v3, 0x7f0f0188

    invoke-static {v1, v3}, Lcom/cbs/app/view/utils/ViewUtil;->b(Landroid/app/Dialog;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_0

    .line 706
    new-instance v3, Lcom/cbs/app/view/SVODPopupHelper$8;

    invoke-direct {v3, v2}, Lcom/cbs/app/view/SVODPopupHelper$8;-><init>(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    :cond_0
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v3, 0x7f0f0191

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 722
    if-eqz v1, :cond_1

    .line 723
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 724
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    :cond_1
    :goto_1
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v3, 0x7f0f0192

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 743
    if-eqz v1, :cond_2

    .line 744
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 745
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    :cond_2
    :goto_2
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v1, 0x7f0f018a

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/app/Dialog;I)Landroid/widget/TextView;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_3

    .line 770
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v3, "svod_launch_upsell_text1"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :cond_3
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v1, 0x7f0f018c

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/app/Dialog;I)Landroid/widget/TextView;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_4

    .line 774
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v3, "svod_launch_upsell_text2"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    :cond_4
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v1, 0x7f0f018b

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ViewUtil;->b(Landroid/app/Dialog;I)Landroid/widget/ImageView;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_5

    .line 779
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v3, "svod_launch_upsell_background_image"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    if-eqz v1, :cond_5

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://wwwimage.cbsstatic.com/base/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 785
    :cond_5
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/app/Dialog;)Landroid/widget/Button;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_6

    .line 787
    if-eqz v2, :cond_d

    .line 788
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    :cond_6
    :goto_3
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/cbs/app/view/utils/ViewUtil;->b(Landroid/app/Dialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 820
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v3, 0x7f0f0190

    invoke-static {v1, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/app/Dialog;I)Landroid/widget/TextView;

    move-result-object v1

    .line 821
    sget-object v3, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v4, 0x7f0f018f

    invoke-static {v3, v4}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/app/Dialog;I)Landroid/widget/TextView;

    move-result-object v3

    .line 823
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " user status is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    if-eqz v0, :cond_7

    .line 825
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->r()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 826
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 842
    :cond_7
    :goto_4
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    new-instance v1, Lcom/cbs/app/view/SVODPopupHelper$14;

    invoke-direct {v1, v2}, Lcom/cbs/app/view/SVODPopupHelper$14;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 855
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    new-instance v1, Lcom/cbs/app/view/SVODPopupHelper$15;

    invoke-direct {v1, v2}, Lcom/cbs/app/view/SVODPopupHelper$15;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 877
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 879
    sget-object v0, Lcom/cbs/app/analytics/Action;->bI:Lcom/cbs/app/analytics/Action;

    .line 880
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 881
    const-string v2, "pageView"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v2, "evar_6"

    const-string v3, "CBS svod"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v2, "prop_6"

    const-string v3, "CBS svod"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string v2, "events"

    const-string v3, "event22"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    if-eqz p1, :cond_8

    .line 888
    const-string v2, "From"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :cond_8
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 893
    :cond_9
    return-void

    .line 701
    :cond_a
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    const v3, 0x7f03005a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 702
    sput-boolean v7, Lcom/cbs/app/view/SVODPopupHelper;->r:Z

    goto/16 :goto_0

    .line 726
    :cond_b
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    new-instance v3, Lcom/cbs/app/view/SVODPopupHelper$9;

    invoke-direct {v3, p2, v1}, Lcom/cbs/app/view/SVODPopupHelper$9;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 747
    :cond_c
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$10;

    invoke-direct {v0, p2}, Lcom/cbs/app/view/SVODPopupHelper$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 790
    :cond_d
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v3, "svod_launch_upsell_call_to_action"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 791
    new-instance v1, Lcom/cbs/app/view/SVODPopupHelper$11;

    invoke-direct {v1}, Lcom/cbs/app/view/SVODPopupHelper$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 828
    :cond_e
    new-instance v4, Lcom/cbs/app/view/SVODPopupHelper$13;

    invoke-direct {v4, v1, v3, p0}, Lcom/cbs/app/view/SVODPopupHelper$13;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 64
    sput-boolean p0, Lcom/cbs/app/view/SVODPopupHelper;->o:Z

    return p0
.end method

.method public static b()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 584
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->q()V

    .line 590
    sput-boolean v7, Lcom/cbs/app/view/SVODPopupHelper;->o:Z

    .line 591
    sput-boolean v7, Lcom/cbs/app/view/SVODPopupHelper;->q:Z

    .line 592
    sput-boolean v4, Lcom/cbs/app/view/SVODPopupHelper;->r:Z

    .line 594
    new-instance v3, Landroid/app/Dialog;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const v2, 0x7f0b00e9

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 595
    const v0, 0x7f030109

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 596
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 597
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$3;

    invoke-direct {v0}, Lcom/cbs/app/view/SVODPopupHelper$3;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 606
    const v0, 0x7f0f03a4

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 607
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v2, "aa_upsell_text1"

    const-string v4, " "

    invoke-static {v1, v2, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const v0, 0x7f0f03a5

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 610
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v2, "aa_upsell_text2"

    const-string v4, " "

    invoke-static {v1, v2, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const v0, 0x7f0f03a6

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 613
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v2, "learn_more_call_to_action"

    const-string v4, " "

    invoke-static {v1, v2, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    const v1, 0x7f0f0370

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 616
    const v2, 0x7f0f0371

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 617
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->s()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    sget-object v4, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v5, "title"

    const-string v6, " "

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 619
    sget-object v4, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v5, "sign_up_call_to_action"

    const-string v6, " "

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    new-instance v4, Lcom/cbs/app/view/SVODPopupHelper$4;

    invoke-direct {v4, v3}, Lcom/cbs/app/view/SVODPopupHelper$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    const-string v2, "Sign In"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    new-instance v2, Lcom/cbs/app/view/SVODPopupHelper$5;

    invoke-direct {v2, v3}, Lcom/cbs/app/view/SVODPopupHelper$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    :cond_2
    :goto_1
    new-instance v1, Lcom/cbs/app/view/SVODPopupHelper$7;

    invoke-direct {v1, v3}, Lcom/cbs/app/view/SVODPopupHelper$7;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 647
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->r()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    sget-object v4, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v5, "title"

    const-string v6, " "

    invoke-static {v4, v5, v6}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 649
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 651
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 652
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v4, "sign_up_call_to_action"

    const-string v5, " "

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    new-instance v1, Lcom/cbs/app/view/SVODPopupHelper$6;

    invoke-direct {v1, v3}, Lcom/cbs/app/view/SVODPopupHelper$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 494
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->q()V

    .line 496
    new-instance v0, Lcom/cbs/app/service/UpsellService;

    invoke-direct {v0}, Lcom/cbs/app/service/UpsellService;-><init>()V

    .line 497
    const-string v1, "APP_LAUNCH_SVOD_UPSELL"

    .line 498
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, p0, v1, v2}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 499
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 451
    const-class v3, Lcom/cbs/app/view/SVODPopupHelper;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "checkToShowLaunchUpsell"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 452
    sput-object p0, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    .line 453
    sput-object p1, Lcom/cbs/app/view/SVODPopupHelper;->m:Ljava/lang/String;

    .line 455
    sget-boolean v1, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 457
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 458
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 463
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->q()V

    .line 465
    sget-object v4, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v5, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v5}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v5, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v5}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 468
    :cond_2
    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    const-string v1, "svod_launch_upsell_frequency"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 471
    const-string v2, "svod_launch_upsell_counter"

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkToShowLaunchUpsell counter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frequency: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    if-nez v1, :cond_3

    .line 474
    invoke-static {p0}, Lcom/cbs/app/view/SVODPopupHelper;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 476
    :cond_3
    :try_start_2
    rem-int v1, v2, v1

    if-nez v1, :cond_4

    .line 477
    invoke-static {p0}, Lcom/cbs/app/view/SVODPopupHelper;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 479
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 480
    sget-object v2, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    const-string v4, "svod_launch_upsell_counter"

    invoke-static {v2, v4, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 64
    sput-boolean p0, Lcom/cbs/app/view/SVODPopupHelper;->q:Z

    return p0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 688
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-static {p0, v0, v0}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 519
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 911
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->q()V

    .line 913
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->s:Z

    if-eqz v0, :cond_0

    .line 917
    const-string v0, "IAB Flow"

    invoke-static {p0, v0}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 918
    sput-boolean v3, Lcom/cbs/app/view/SVODPopupHelper;->q:Z

    .line 919
    sput-object v2, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    .line 920
    sput-object v2, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 974
    :cond_0
    :goto_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->c()V

    .line 975
    sput-boolean v3, Lcom/cbs/app/view/SVODPopupHelper;->r:Z

    .line 978
    return-void

    .line 922
    :cond_1
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    sput-boolean v3, Lcom/cbs/app/view/SVODPopupHelper;->q:Z

    .line 926
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v0, :cond_0

    .line 936
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 938
    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/view/SVODPopupHelper$16;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/SVODPopupHelper$16;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0, v1, v2}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0

    .line 960
    :cond_2
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->EX_SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    :cond_3
    if-eqz p1, :cond_4

    .line 966
    invoke-static {p0, p1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :cond_4
    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->s:Z

    if-eqz v0, :cond_0

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "weWantToSeelUpsellAfterAuth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 969
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->o:Z

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static getWeWantToSeeShow()Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object v0
.end method

.method public static getWeWantToSeeVideo()Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->q:Z

    return v0
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->p:Z

    return v0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->r:Z

    return v0
.end method

.method static synthetic k()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->s()Z

    move-result v0

    return v0
.end method

.method static synthetic n()Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object v0
.end method

.method static synthetic o()Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic p()Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object v0
.end method

.method private static q()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "Anonymous"

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    .line 506
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userStatusStr: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    return-void
.end method

.method private static r()Z
    .locals 2

    .prologue
    .line 896
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->EX_SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static s()Z
    .locals 2

    .prologue
    .line 900
    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    const-string v1, "Anonymous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cbs/app/view/SVODPopupHelper;->l:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 0

    .prologue
    .line 301
    sput-object p0, Lcom/cbs/app/view/SVODPopupHelper;->t:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 302
    return-void
.end method

.method public static setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 309
    sput-object p0, Lcom/cbs/app/view/SVODPopupHelper;->u:Lcom/cbs/app/view/model/VideoData;

    .line 310
    return-void
.end method

.method public static setWeWantToSeelUpsellAfterAuth(Z)V
    .locals 0

    .prologue
    .line 293
    sput-boolean p0, Lcom/cbs/app/view/SVODPopupHelper;->s:Z

    .line 294
    return-void
.end method
