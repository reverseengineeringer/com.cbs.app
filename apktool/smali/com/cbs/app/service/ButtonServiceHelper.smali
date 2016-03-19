.class public Lcom/cbs/app/service/ButtonServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/cbs/app/androiddata/ResponseModelListener;

.field static b:Lcom/cbs/app/androiddata/ResponseModelListener;

.field static c:Lcom/cbs/app/androiddata/ResponseModelListener;

.field static d:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

.field static e:Lcom/cbs/app/androiddata/ResponseModelListener;

.field public static final f:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Landroid/content/Context;

.field private static l:Lcom/cbs/app/view/model/Show;

.field private static m:Landroid/widget/Button;

.field private static n:Ljava/lang/String;

.field private static o:Z

.field private static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sput-boolean v1, Lcom/cbs/app/service/ButtonServiceHelper;->g:Z

    .line 74
    sput-boolean v1, Lcom/cbs/app/service/ButtonServiceHelper;->h:Z

    .line 75
    sput-boolean v1, Lcom/cbs/app/service/ButtonServiceHelper;->i:Z

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->j:Z

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$1;

    invoke-direct {v0}, Lcom/cbs/app/service/ButtonServiceHelper$1;-><init>()V

    sput-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->a:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 114
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$7;

    invoke-direct {v0}, Lcom/cbs/app/service/ButtonServiceHelper$7;-><init>()V

    sput-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->b:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 146
    sput-boolean v1, Lcom/cbs/app/service/ButtonServiceHelper;->o:Z

    .line 147
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$8;

    invoke-direct {v0}, Lcom/cbs/app/service/ButtonServiceHelper$8;-><init>()V

    sput-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 192
    sput-boolean v1, Lcom/cbs/app/service/ButtonServiceHelper;->p:Z

    .line 193
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$9;

    invoke-direct {v0}, Lcom/cbs/app/service/ButtonServiceHelper$9;-><init>()V

    sput-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->d:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    .line 238
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$10;

    invoke-direct {v0}, Lcom/cbs/app/service/ButtonServiceHelper$10;-><init>()V

    sput-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->e:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 286
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$11;

    invoke-direct {v0}, Lcom/cbs/app/service/ButtonServiceHelper$11;-><init>()V

    sput-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->f:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 533
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 534
    sget-object v1, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cbs/app/service/ButtonServiceHelper;->a:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 1206
    const-string v4, "favorite-shows"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cbs/app/service/MyCBSService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 535
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 657
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    const v3, 0x7f0b00e9

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 658
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/cbs/app/service/ButtonServiceHelper$5;

    invoke-direct {v3}, Lcom/cbs/app/service/ButtonServiceHelper$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 668
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 669
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 670
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Episode;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 699
    sput-object p3, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 700
    if-eqz p0, :cond_0

    .line 701
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$6;

    invoke-direct {v0, p2, p1}, Lcom/cbs/app/service/ButtonServiceHelper$6;-><init>(Lcom/cbs/app/view/model/Episode;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    const/4 v0, 0x1

    .line 743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 484
    invoke-static {p0, p1, p2, p3}, Lcom/cbs/app/service/ButtonServiceHelper;->b(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/cbs/app/view/model/Show;)Z
    .locals 7

    .prologue
    .line 314
    sput-object p5, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 315
    if-eqz p0, :cond_0

    .line 316
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$12;

    move-object v1, p1

    move-object v2, p6

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/ButtonServiceHelper$12;-><init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 347
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    sput-object p6, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 349
    if-eqz p0, :cond_0

    .line 350
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$13;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/ButtonServiceHelper$13;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    const/4 v0, 0x1

    .line 382
    :cond_0
    return v0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 9

    .prologue
    .line 451
    sput-object p7, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 452
    if-eqz p0, :cond_0

    .line 453
    new-instance v1, Lcom/cbs/app/service/ButtonServiceHelper$3;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/cbs/app/service/ButtonServiceHelper$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 49
    sput-boolean p0, Lcom/cbs/app/service/ButtonServiceHelper;->i:Z

    return p0
.end method

.method public static b()V
    .locals 5

    .prologue
    .line 538
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 539
    sget-object v1, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cbs/app/service/ButtonServiceHelper;->b:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 2202
    const-string v4, "favorite-shows"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 540
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 492
    invoke-virtual {p2}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movies & Specials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_0
    if-eqz p1, :cond_1

    .line 497
    check-cast p0, Landroid/widget/Button;

    sput-object p0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    .line 498
    sput-object p1, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    .line 499
    sput-object p2, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    .line 500
    sput-object p3, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 501
    sput-boolean v3, Lcom/cbs/app/service/ButtonServiceHelper;->g:Z

    .line 502
    sput-boolean v3, Lcom/cbs/app/service/ButtonServiceHelper;->h:Z

    .line 503
    sput-boolean v3, Lcom/cbs/app/service/ButtonServiceHelper;->i:Z

    .line 505
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 506
    sput-boolean v3, Lcom/cbs/app/service/ButtonServiceHelper;->j:Z

    .line 507
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 511
    sget-object v1, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->e:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 528
    :cond_1
    :goto_0
    return v3

    .line 513
    :cond_2
    sput-boolean v3, Lcom/cbs/app/service/ButtonServiceHelper;->p:Z

    .line 514
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    sget-object v1, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->d:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;-><init>(Landroid/content/Context;Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;)V

    .line 515
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a()V

    goto :goto_0

    .line 518
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->j:Z

    .line 521
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movies & Specials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 524
    :cond_4
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->c()V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6

    .prologue
    .line 387
    sput-object p6, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 388
    if-eqz p0, :cond_0

    .line 389
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$14;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/ButtonServiceHelper$14;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    const/4 v0, 0x1

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 49
    sput-boolean p0, Lcom/cbs/app/service/ButtonServiceHelper;->h:Z

    return p0
.end method

.method public static c()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 544
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Movies & Specials"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 548
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_6

    .line 549
    new-instance v2, Lcom/cbs/app/db/MyShowDataSource;

    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {v2}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 551
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/cbs/app/db/MyShowDataSource;->a(J)Z

    move-result v0

    .line 552
    invoke-virtual {v2}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 554
    :goto_0
    if-eqz v0, :cond_1

    .line 555
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->o:Z

    .line 556
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    const-string v2, "Remove this show from My CBS"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 558
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Movies & Specials"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 561
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    :goto_1
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movies & Specials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/service/ButtonServiceHelper$4;

    invoke-direct {v1}, Lcom/cbs/app/service/ButtonServiceHelper$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    :cond_0
    return-void

    .line 564
    :cond_1
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    const-string v2, "Add this show to My CBS"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 566
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Movies & Specials"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 569
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 574
    :cond_2
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->g:Z

    if-eqz v0, :cond_5

    .line 575
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Movies & Specials"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    :goto_2
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->i:Z

    if-eqz v0, :cond_4

    .line 581
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    const-string v1, "Remove this show from My CBS"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 578
    :cond_3
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 584
    :cond_4
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    const-string v1, "Add this show to My CBS"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 588
    :cond_5
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public static c(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6

    .prologue
    .line 419
    sput-object p6, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    .line 420
    if-eqz p0, :cond_0

    .line 421
    new-instance v0, Lcom/cbs/app/service/ButtonServiceHelper$2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/ButtonServiceHelper$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Z)Z
    .locals 0

    .prologue
    .line 49
    sput-boolean p0, Lcom/cbs/app/service/ButtonServiceHelper;->j:Z

    return p0
.end method

.method static synthetic d()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/cbs/app/view/model/Show;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->l:Lcom/cbs/app/view/model/Show;

    return-object v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->j:Z

    return v0
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->o:Z

    return v0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->i:Z

    return v0
.end method

.method static synthetic k()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->g:Z

    return v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->p:Z

    return v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->g:Z

    return v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->p:Z

    return v0
.end method

.method static synthetic o()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/cbs/app/service/ButtonServiceHelper;->h:Z

    return v0
.end method
