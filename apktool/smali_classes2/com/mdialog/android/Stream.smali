.class public Lcom/mdialog/android/Stream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdialog/android/Stream$a;,
        Lcom/mdialog/android/Stream$b;,
        Lcom/mdialog/android/Stream$Type;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Landroid/view/ViewGroup;

.field c:Lcom/mdialog/android/StreamContext;

.field d:Ljava/net/URL;

.field e:Ljava/net/URL;

.field f:Ljava/net/URL;

.field g:Ljava/net/URL;

.field h:Ljava/net/URL;

.field i:Ljava/net/URL;

.field j:Ljava/net/URL;

.field k:Ljava/lang/String;

.field l:Lcom/mdialog/android/Stream;

.field m:Lcom/mdialog/android/stream/b;

.field n:Lcom/mdialog/android/stream/b;

.field o:Z

.field private p:Lcom/mdialog/android/stream/a;

.field private q:Lcom/mdialog/android/stream/e;

.field private r:Ljava/lang/Integer;

.field private s:Lcom/mdialog/android/stream/c;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdialog/android/stream/AdBreakListener;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdialog/android/OnStreamLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/concurrent/ScheduledExecutorService;

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mdialog/android/StreamContext;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/mdialog/android/Stream;->m:Lcom/mdialog/android/stream/b;

    .line 82
    iput-object v0, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    .line 84
    iput-object v0, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    .line 86
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/Stream;->r:Ljava/lang/Integer;

    .line 89
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/Stream;->t:Ljava/lang/Integer;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/Stream;->w:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    iput-boolean v1, p0, Lcom/mdialog/android/Stream;->x:Z

    .line 97
    iput-boolean v1, p0, Lcom/mdialog/android/Stream;->y:Z

    .line 98
    iput-boolean v1, p0, Lcom/mdialog/android/Stream;->o:Z

    .line 612
    new-instance v0, Lcom/mdialog/android/Stream$1;

    invoke-direct {v0, p0}, Lcom/mdialog/android/Stream$1;-><init>(Lcom/mdialog/android/Stream;)V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->z:Ljava/lang/Runnable;

    .line 529
    iput-object p1, p0, Lcom/mdialog/android/Stream;->c:Lcom/mdialog/android/StreamContext;

    .line 530
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 503
    const-string v1, ""

    .line 504
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 508
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 509
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 511
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 515
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### Data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mdialog_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, "mdialog_"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 517
    if-gez v1, :cond_0

    .line 518
    const-string v0, ""

    .line 522
    :goto_1
    return-object v0

    .line 513
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 520
    :cond_0
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 522
    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_1

    .line 513
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/mdialog/android/Stream;)V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->e()V

    return-void
.end method

.method private a(Lcom/mdialog/android/stream/AdBreak;Ljava/lang/Integer;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 705
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 713
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreakListener;

    .line 708
    invoke-virtual {p1}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 709
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 710
    invoke-virtual {p1, v2}, Lcom/mdialog/android/stream/AdBreak;->setUnwatched(Z)V

    .line 711
    :cond_1
    invoke-interface {v0, p1, v3}, Lcom/mdialog/android/stream/AdBreakListener;->adBreakProgressed(Lcom/mdialog/android/stream/AdBreak;Ljava/lang/Integer;)V

    .line 705
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Lcom/mdialog/android/stream/AdEvent;)V
    .locals 2

    .prologue
    .line 717
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 722
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreakListener;

    .line 720
    invoke-interface {v0, p1}, Lcom/mdialog/android/stream/AdBreakListener;->adEventStarted(Lcom/mdialog/android/stream/AdEvent;)V

    .line 717
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Lcom/mdialog/android/stream/a;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    if-eq v0, p1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    iget-object v1, p0, Lcom/mdialog/android/Stream;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/stream/a;->a(Landroid/view/ViewGroup;)V

    .line 729
    :cond_0
    iput-object p1, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    .line 730
    iget-object v0, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    iget-object v1, p0, Lcom/mdialog/android/Stream;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/stream/a;->a(Ljava/lang/Object;)V

    .line 731
    invoke-virtual {p1}, Lcom/mdialog/android/stream/a;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/mdialog/android/stream/a;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/mdialog/android/Stream;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Lcom/mdialog/android/stream/a;->a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    .line 733
    return-void
.end method

.method private a(Lcom/mdialog/android/stream/b;)V
    .locals 2

    .prologue
    .line 463
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/mdialog/android/Stream;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mdialog/android/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 468
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 473
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 475
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mdialog/android/Stream;->t:Ljava/lang/Integer;

    .line 478
    iget-object v1, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-virtual {v1, p1}, Lcom/mdialog/android/stream/c;->a(Ljava/lang/String;)Lcom/mdialog/android/stream/b;

    move-result-object v1

    .line 479
    invoke-direct {p0, v1}, Lcom/mdialog/android/Stream;->a(Lcom/mdialog/android/stream/b;)V

    .line 482
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mdialog/android/stream/b;->d()Lcom/mdialog/android/stream/AdEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 483
    invoke-virtual {v1}, Lcom/mdialog/android/stream/b;->d()Lcom/mdialog/android/stream/AdEvent;

    move-result-object v2

    .line 484
    invoke-direct {p0, v2}, Lcom/mdialog/android/Stream;->a(Lcom/mdialog/android/stream/AdEvent;)V

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-virtual {v2, p1, v0}, Lcom/mdialog/android/stream/c;->a(Ljava/lang/String;I)V

    .line 489
    const-string v0, "_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    if-eqz v1, :cond_2

    .line 491
    invoke-virtual {v1}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    iput-object v1, p0, Lcom/mdialog/android/Stream;->m:Lcom/mdialog/android/stream/b;

    .line 494
    :cond_1
    invoke-virtual {v1}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    iput-object v1, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    .line 500
    :cond_2
    return-void
.end method

.method private a(I)Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 690
    .line 691
    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mdialog/android/stream/c;->b(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v5

    move v1, v2

    move v3, v4

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move v4, v3

    .line 700
    :cond_0
    return v4

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreakListener;

    .line 697
    if-eqz v3, :cond_2

    invoke-interface {v0, v5}, Lcom/mdialog/android/stream/AdBreakListener;->streamShouldProcessAdBreak(Lcom/mdialog/android/stream/AdBreak;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v4

    .line 694
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 697
    goto :goto_1
.end method

.method static synthetic b(Lcom/mdialog/android/Stream;)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->f()V

    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 559
    iget-object v0, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    iget-object v1, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v1, v1, Lcom/mdialog/android/stream/e;->e:Lcom/mdialog/android/stream/c;

    iput-object v1, v0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    .line 563
    iget-object v6, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    new-instance v0, Lcom/mdialog/android/stream/e;

    sget-object v1, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/mdialog/android/stream/e;-><init>(Lcom/mdialog/android/Stream$Type;Ljava/lang/Integer;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mdialog/android/stream/c;)V

    iput-object v0, v6, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    .line 565
    iget-object v0, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    iget-object v1, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    .line 567
    iget-object v0, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    iget-object v1, p0, Lcom/mdialog/android/Stream;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/Stream;->setOverlayContainerView(Landroid/view/ViewGroup;)V

    .line 569
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/mdialog/android/Stream;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mdialog/android/b;->a(Ljava/lang/String;)Lcom/mdialog/android/stream/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    .line 574
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->c()V

    .line 575
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    sget-object v1, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    if-ne v0, v1, :cond_1

    .line 582
    iget-boolean v0, p0, Lcom/mdialog/android/Stream;->y:Z

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/mdialog/android/Stream;->h:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    invoke-static {v0, v1}, Lcom/mdialog/android/b;->a(Ljava/lang/String;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->w:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/mdialog/android/Stream;->z:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/mdialog/android/Stream;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 594
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/mdialog/android/Stream;->i:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    invoke-static {v0, v1}, Lcom/mdialog/android/b;->a(Ljava/lang/String;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;
    :try_end_0
    .catch Lcom/mdialog/android/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/mdialog/android/a/b;->printStackTrace()V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->d:Ljava/util/HashMap;

    const-string v1, "heartbeats"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 601
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    :goto_1
    return-void

    .line 602
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/d;

    .line 603
    iget-object v2, p0, Lcom/mdialog/android/Stream;->w:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/mdialog/android/Stream$a;

    iget-object v4, v0, Lcom/mdialog/android/stream/d;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/mdialog/android/Stream;->y:Z

    invoke-direct {v3, p0, v4, v5}, Lcom/mdialog/android/Stream$a;-><init>(Lcom/mdialog/android/Stream;Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/mdialog/android/stream/d;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->c:Ljava/util/HashMap;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 739
    iget-object v1, p0, Lcom/mdialog/android/Stream;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/mdialog/android/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 741
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->c:Ljava/util/HashMap;

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 747
    iget-object v1, p0, Lcom/mdialog/android/Stream;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/mdialog/android/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 749
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->d()V

    .line 551
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->e()V

    .line 552
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    sget-object v1, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    if-ne v0, v1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->f()V

    .line 555
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 537
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/manifest.m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->d:Ljava/net/URL;

    .line 538
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/hd_manifest.m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->e:Ljava/net/URL;

    .line 539
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/low_manifest.m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->f:Ljava/net/URL;

    .line 540
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->g:Ljava/net/URL;

    .line 541
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/timed_metadata_events.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->h:Ljava/net/URL;

    .line 542
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/stream_time_events.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mdialog/android/Stream;->i:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public addAdBreakListener(Lcom/mdialog/android/stream/AdBreakListener;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mdialog/android/Stream;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public addOnStreamLoadedListener(Lcom/mdialog/android/OnStreamLoadedListener;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 675
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 679
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/OnStreamLoadedListener;

    invoke-interface {v0}, Lcom/mdialog/android/OnStreamLoadedListener;->streamLoaded()V

    .line 675
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 667
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 671
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/OnStreamLoadedListener;

    invoke-interface {v0, p1}, Lcom/mdialog/android/OnStreamLoadedListener;->streamExpired(Ljava/lang/String;)V

    .line 667
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 683
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 687
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/OnStreamLoadedListener;

    invoke-interface {v0, p1}, Lcom/mdialog/android/OnStreamLoadedListener;->streamFailed(Ljava/lang/String;)V

    .line 683
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mdialog/android/Stream;->w:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mdialog/android/Stream;->w:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/mdialog/android/Stream;->x:Z

    if-eqz v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->h()V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/mdialog/android/Stream;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/mdialog/android/a;->a(Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public getActivityURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mdialog/android/Stream;->j:Ljava/net/URL;

    return-object v0
.end method

.method public getAdBreaks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdialog/android/stream/AdBreak;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHdManifestURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mdialog/android/Stream;->e:Ljava/net/URL;

    return-object v0
.end method

.method public getLowManifestURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mdialog/android/Stream;->f:Ljava/net/URL;

    return-object v0
.end method

.method public getManifestURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mdialog/android/Stream;->d:Ljava/net/URL;

    return-object v0
.end method

.method public getMidRollStartTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNearestPreviousAdBreak(I)Lcom/mdialog/android/stream/AdBreak;
    .locals 4

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-virtual {v1}, Lcom/mdialog/android/stream/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    return-object v1

    .line 265
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    .line 266
    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 267
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v1}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    :cond_2
    move-object v1, v0

    .line 270
    goto :goto_0
.end method

.method public getPreRollStream()Lcom/mdialog/android/Stream;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    return-object v0
.end method

.method public getStreamTimeWithAds(I)I
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    return p1

    .line 326
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    .line 327
    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method public getStreamTimeWithoutAds(I)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 298
    .line 299
    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    sub-int v0, p1, v1

    .line 311
    if-ltz v0, :cond_1

    move v2, v0

    :cond_1
    return v2

    .line 299
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    .line 303
    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_3

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v4, p1, :cond_3

    .line 304
    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 305
    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, p1, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public getStreamType()Lcom/mdialog/android/Stream$Type;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    return-object v0
.end method

.method public getSubtitlesURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mdialog/android/Stream;->k:Ljava/lang/String;

    return-object v0
.end method

.method public onID3Metadata(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    sget-object v1, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    if-ne v0, v1, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lcom/mdialog/android/Stream;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 457
    invoke-direct {p0, v0, p2}, Lcom/mdialog/android/Stream;->a(Ljava/lang/String;I)V

    .line 459
    :cond_0
    return-void
.end method

.method public playerTimeUpdated(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v1, v1, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    sget-object v2, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/mdialog/android/Stream;->x:Z

    if-nez v1, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/mdialog/android/Stream;->g()V

    .line 362
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mdialog/android/Stream;->x:Z

    .line 365
    :cond_0
    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 369
    iget-object v1, p0, Lcom/mdialog/android/Stream;->t:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mdialog/android/Stream;->t:Ljava/lang/Integer;

    .line 374
    iget-object v1, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v1, v1, Lcom/mdialog/android/stream/e;->a:Lcom/mdialog/android/Stream$Type;

    sget-object v3, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    if-ne v1, v3, :cond_5

    .line 383
    iget-object v1, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mdialog/android/stream/c;->a(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v1

    .line 384
    invoke-direct {p0, v2}, Lcom/mdialog/android/Stream;->a(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 385
    invoke-direct {p0, v1}, Lcom/mdialog/android/Stream;->a(Lcom/mdialog/android/stream/b;)V

    .line 387
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mdialog/android/stream/b;->d()Lcom/mdialog/android/stream/AdEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {v1}, Lcom/mdialog/android/stream/b;->d()Lcom/mdialog/android/stream/AdEvent;

    move-result-object v0

    .line 389
    invoke-direct {p0, v0}, Lcom/mdialog/android/Stream;->a(Lcom/mdialog/android/stream/AdEvent;)V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mdialog/android/stream/c;->b(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v1

    .line 393
    iget-object v0, p0, Lcom/mdialog/android/Stream;->s:Lcom/mdialog/android/stream/c;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mdialog/android/stream/c;->c(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v0

    .line 408
    :goto_1
    if-eqz v1, :cond_4

    .line 411
    invoke-virtual {v1}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v1

    .line 412
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/mdialog/android/Stream;->a(Lcom/mdialog/android/stream/AdBreak;Ljava/lang/Integer;)V

    .line 415
    :cond_4
    iget-object v1, p0, Lcom/mdialog/android/Stream;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 418
    if-eqz v0, :cond_7

    .line 421
    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v0

    .line 422
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mdialog/android/Stream;->a(Lcom/mdialog/android/stream/a;Ljava/lang/Integer;)V

    goto :goto_0

    .line 397
    :cond_5
    iget-object v1, p0, Lcom/mdialog/android/Stream;->m:Lcom/mdialog/android/stream/b;

    .line 398
    iget-object v3, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    invoke-virtual {v3}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 399
    iget-object v3, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    invoke-virtual {v3}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mdialog/android/stream/a;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    invoke-virtual {v4}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mdialog/android/stream/a;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 400
    if-le v2, v3, :cond_6

    .line 401
    iput-object v0, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/mdialog/android/Stream;->n:Lcom/mdialog/android/stream/b;

    goto :goto_1

    .line 423
    :cond_7
    iget-object v0, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/mdialog/android/Stream;->p:Lcom/mdialog/android/stream/a;

    iget-object v1, p0, Lcom/mdialog/android/Stream;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/stream/a;->a(Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method

.method public setAppInBackground(Z)V
    .locals 5

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/mdialog/android/Stream;->y:Z

    .line 191
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 193
    const-wide/16 v0, 0x0

    .line 194
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 195
    const-wide/16 v0, 0x1

    move-wide v2, v0

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/Stream;->q:Lcom/mdialog/android/stream/e;

    iget-object v0, v0, Lcom/mdialog/android/stream/e;->d:Ljava/util/HashMap;

    const-string v1, "heartbeats"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/d;

    .line 201
    iget-object v1, p0, Lcom/mdialog/android/Stream;->w:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/mdialog/android/Stream$b;

    iget-object v0, v0, Lcom/mdialog/android/stream/d;->a:Ljava/lang/String;

    invoke-direct {v4, p0, v0}, Lcom/mdialog/android/Stream$b;-><init>(Lcom/mdialog/android/Stream;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 207
    :cond_0
    return-void

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public setOverlayContainerView(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mdialog/android/Stream;->b:Landroid/view/ViewGroup;

    .line 217
    iget-object v0, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mdialog/android/Stream;->l:Lcom/mdialog/android/Stream;

    iput-object p1, v0, Lcom/mdialog/android/Stream;->b:Landroid/view/ViewGroup;

    .line 220
    :cond_0
    return-void
.end method
