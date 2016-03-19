.class public Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static p:Z


# instance fields
.field protected a:Z

.field private c:Lcom/google/android/gms/cast/d;

.field private d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

.field private f:Ljava/lang/Thread;

.field private g:Ljava/util/Timer;

.field private h:Landroid/os/Handler;

.field private i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

.field private j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

.field private k:Ljava/util/Timer;

.field private l:I

.field private m:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;

.field private n:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

.field private o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a:Z

    .line 88
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->n:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    .line 91
    iput-boolean v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    .line 768
    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/d;)Lcom/google/android/gms/cast/d;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    return-object p1
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
    .locals 3

    .prologue
    .line 519
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;-><init>()V

    .line 520
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 521
    const-string v2, "extras"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 522
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 523
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 534
    :cond_0
    if-nez p1, :cond_1

    .line 535
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder_large:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setImage(Landroid/graphics/Bitmap;)V

    .line 560
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 544
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    .line 545
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 559
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    .line 3608
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->a(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dlg"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f()V

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->p:Z

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x3

    .line 337
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Y()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    .line 344
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setClosedCaptionState(I)V

    .line 345
    return-void

    .line 341
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 348
    const-string v0, "Stopped TrickPlay Timer"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 352
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    return v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g()V

    .line 356
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->k:Ljava/util/Timer;

    .line 357
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->k:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$d;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;B)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 358
    const-string v0, "Restarted TrickPlay Timer"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method static synthetic i(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    if-eqz v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    .line 389
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Landroid/net/Uri;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v0, :cond_2

    .line 398
    :goto_1
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setTitle(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 397
    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->c(Z)V

    goto :goto_1

    .line 394
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 396
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic j(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method

.method private j()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 401
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updatePlayerStatus(), state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/d;->b()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setStreamType(I)V

    .line 407
    if-ne v0, v7, :cond_2

    .line 408
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_loading:I

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    .line 413
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 438
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :pswitch_2
    iput-boolean v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    .line 416
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    if-eq v0, v8, :cond_0

    .line 417
    iput v8, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 418
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    goto :goto_0

    .line 422
    :pswitch_3
    iput-boolean v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    .line 423
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    if-eq v0, v9, :cond_0

    .line 424
    iput v9, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 425
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    goto :goto_0

    .line 429
    :pswitch_4
    iput-boolean v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    .line 430
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    if-eq v0, v7, :cond_0

    .line 431
    iput v7, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 432
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    goto :goto_0

    .line 444
    :pswitch_5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    if-eq v0, v6, :cond_0

    .line 446
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 447
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 451
    :catch_0
    move-exception v0

    :goto_2
    const-string v0, "Failed to determine if stream is live"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 436
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic k(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g()V

    .line 641
    return-void
.end method

.method public final a(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 623
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 624
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 625
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    .line 626
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->i(I)V

    .line 630
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->h()V

    .line 635
    :goto_1
    return-void

    .line 627
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b:Ljava/lang/String;

    const-string v2, "Failed to complete seek"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 750
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    new-array v0, v0, [J

    .line 758
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a([J)V

    .line 759
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Y()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a()Lcom/google/android/gms/cast/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/j;)V

    .line 763
    :cond_0
    return-void

    .line 753
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    move v1, v0

    .line 754
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 755
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 754
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isConnected returning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 2656
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    packed-switch v0, :pswitch_data_0

    .line 2679
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    .line 652
    return-void

    .line 2658
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->P()V

    .line 2673
    :goto_1
    iput v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 2674
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->h()V

    goto :goto_0

    .line 2663
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Q()V

    .line 2664
    iput v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    goto :goto_0

    .line 2667
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2669
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->P()V

    goto :goto_1

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/d;)V

    goto :goto_1

    .line 2656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 684
    .line 3363
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$3;->a:[I

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->n:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v0, :cond_3

    .line 686
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Landroid/net/Uri;)V

    .line 695
    :cond_1
    :goto_1
    return-void

    .line 3365
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    .line 3366
    if-eqz v0, :cond_0

    .line 3367
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    .line 3369
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b(Z)V

    goto :goto_0

    .line 3367
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 690
    :cond_3
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i()V

    .line 691
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j()V

    .line 692
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->d(Z)V

    goto :goto_1

    .line 3363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;

    invoke-direct {v0, p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;B)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->m:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 115
    const-string v0, "media"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 118
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->setRetainInstance(Z)V

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "ccl-start-cast-activity"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->c(Ljava/lang/String;)Z

    move-result v6

    .line 122
    if-eqz v6, :cond_2

    .line 123
    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "ccl-start-cast-activity"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    const-string v0, "hasAuth"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->n:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    .line 130
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    .line 131
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    .line 1157
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b(Z)V

    .line 1158
    if-eqz v1, :cond_3

    .line 1161
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f:Ljava/lang/Thread;

    .line 1171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1174
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g:Ljava/util/Timer;

    .line 1175
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g:Ljava/util/Timer;

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f:Ljava/lang/Thread;

    invoke-direct {v2, p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/Thread;)V

    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->d()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1161
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 134
    :cond_5
    if-eqz v5, :cond_0

    .line 135
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->n:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$c;

    .line 136
    const-string v0, "shouldStart"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 137
    const-string v0, "customData"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_2
    invoke-static {v5}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/d;

    move-result-object v5

    .line 148
    const-string v1, "startPoint"

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 149
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    move v1, v2

    .line 1309
    :goto_3
    iput-object v5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    .line 1310
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f()V

    .line 1312
    :try_start_1
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/d;->b()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setStreamType(I)V

    .line 1313
    if-eqz v1, :cond_8

    .line 1315
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 1316
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    .line 1317
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/d;ZILorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1331
    :goto_4
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i()V

    .line 1332
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->h()V

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    sget-object v9, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to unmarshalize custom data string: customData="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move v1, v3

    .line 149
    goto :goto_3

    .line 1320
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1321
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    .line 1325
    :goto_5
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1327
    :catch_1
    move-exception v0

    .line 1328
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b:Ljava/lang/String;

    const-string v2, "Failed to get playback and media information"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    goto :goto_4

    .line 1323
    :cond_9
    const/4 v0, 0x3

    :try_start_3
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->l:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->p:Z

    .line 101
    check-cast p1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->h:Landroid/os/Handler;

    .line 103
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    const-string v0, "onDestroy()"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g()V

    .line 1782
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    .line 1783
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1787
    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f:Ljava/lang/Thread;

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1791
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E()V

    .line 1793
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-eqz v0, :cond_3

    .line 1794
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->m:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 1796
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->h:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1797
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1799
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    if-eqz v0, :cond_5

    .line 1800
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->o:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    invoke-static {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1802
    :cond_5
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->p:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    if-eqz v0, :cond_6

    .line 1803
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 1806
    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;)V

    .line 469
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 470
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->m:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h()V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    .line 512
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 513
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 474
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->I()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->k()Z

    move-result v2

    if-nez v2, :cond_5

    .line 484
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v2

    if-ne v2, v1, :cond_3

    :cond_2
    move v0, v1

    .line 487
    :cond_3
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    if-nez v0, :cond_5

    .line 488
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 505
    :cond_4
    :goto_0
    return-void

    .line 492
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->m:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g()V

    .line 494
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->q:Z

    if-nez v0, :cond_4

    .line 495
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j()V

    .line 498
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    .line 499
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f()V

    .line 500
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    :goto_1
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b:Ljava/lang/String;

    const-string v2, "Failed to get media information or status of media playback"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 502
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 613
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 614
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 618
    :cond_0
    return-void
.end method
