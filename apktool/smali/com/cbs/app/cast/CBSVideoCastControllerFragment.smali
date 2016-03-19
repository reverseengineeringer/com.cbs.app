.class public Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/cast/CBSVideoCastControllerFragment$3;,
        Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;,
        Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;,
        Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;,
        Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;,
        Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;,
        Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;
    }
.end annotation


# static fields
.field private static b:Z


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

.field private m:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

.field private n:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

.field private o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a:Z

    .line 79
    sget-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->c:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->n:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    .line 81
    iput-boolean v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    .line 831
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    return-object p1
.end method

.method public static a(Landroid/os/Bundle;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-direct {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v2, "extras"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Lcom/google/android/gms/cast/d;)Lcom/google/android/gms/cast/d;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    return-object p1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 421
    :cond_0
    if-nez p1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020060

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setImage(Landroid/graphics/Bitmap;)V

    .line 457
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    invoke-static {v0, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 431
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    .line 432
    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 447
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 448
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 450
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/d;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 451
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 453
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    .line 3464
    invoke-static {p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->a(Ljava/lang/String;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dlg"

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x3

    .line 271
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Y()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    .line 278
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setClosedCaptionState(I)V

    .line 279
    return-void

    .line 275
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 286
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f()V

    .line 290
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->k:Ljava/util/Timer;

    .line 291
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->k:Ljava/util/Timer;

    new-instance v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;B)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 293
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    if-eqz v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    .line 323
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Landroid/net/Uri;)V

    .line 324
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v0, :cond_2

    .line 332
    :goto_1
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setTitle(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 331
    :goto_3
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->c(Z)V

    goto :goto_1

    .line 328
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 330
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic h(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e()V

    return-void
.end method

.method private i()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/d;->b()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setStreamType(I)V

    .line 341
    if-ne v0, v7, :cond_2

    .line 342
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    const v2, 0x7f0800c8

    invoke-virtual {p0, v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    .line 347
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 372
    :pswitch_1
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    const v2, 0x7f0800ae

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :pswitch_2
    iput-boolean v5, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    .line 350
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    if-eq v0, v8, :cond_0

    .line 351
    iput v8, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 352
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    goto :goto_0

    .line 356
    :pswitch_3
    iput-boolean v5, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    .line 357
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    if-eq v0, v9, :cond_0

    .line 358
    iput v9, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 359
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    goto :goto_0

    .line 363
    :pswitch_4
    iput-boolean v5, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    .line 364
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    if-eq v0, v7, :cond_0

    .line 365
    iput v7, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 366
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    goto :goto_0

    .line 378
    :pswitch_5
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    if-eq v0, v6, :cond_0

    .line 380
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 381
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to determine if stream is live"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 384
    :catch_1
    move-exception v0

    goto :goto_2

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 370
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic i(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h()V

    return-void
.end method

.method static synthetic j(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i()V

    return-void
.end method

.method static synthetic k(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f()V

    .line 498
    return-void
.end method

.method public final a(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 480
    :try_start_0
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 481
    const/4 v0, 0x4

    iput v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 482
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    .line 483
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->i(I)V

    .line 487
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g()V

    .line 492
    :goto_1
    return-void

    .line 484
    :cond_1
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v1, "VideoCastContrFragment"

    const-string v2, "Failed to complete seek"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

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

    .line 610
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    new-array v0, v0, [J

    .line 618
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a([J)V

    .line 619
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Y()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->a()Lcom/google/android/gms/cast/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/j;)V

    .line 623
    :cond_0
    return-void

    .line 613
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    move v1, v0

    .line 614
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 615
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 614
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

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isConnected returning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "togglePlayback PlayBackState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2514
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    packed-switch v0, :pswitch_data_0

    .line 2538
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting Player Status to : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2539
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    .line 509
    return-void

    .line 2516
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->P()V

    .line 2532
    :goto_1
    iput v3, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 2533
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g()V

    goto :goto_0

    .line 2522
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Q()V

    .line 2523
    iput v3, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    goto :goto_0

    .line 2526
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->P()V

    goto :goto_1

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/d;)V

    goto :goto_1

    .line 2514
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
    .line 545
    .line 3297
    sget-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$3;->a:[I

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->n:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    invoke-virtual {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 546
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-nez v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Landroid/net/Uri;)V

    .line 555
    :cond_1
    :goto_1
    return-void

    .line 3299
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    .line 3300
    if-eqz v0, :cond_0

    .line 3301
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    .line 3303
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b(Z)V

    goto :goto_0

    .line 3301
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 551
    :cond_3
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h()V

    .line 552
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i()V

    .line 553
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->d(Z)V

    goto :goto_1

    .line 3297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    invoke-direct {v0, p0, v3}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;B)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->m:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    .line 110
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getArguments()Landroid/os/Bundle;

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
    invoke-virtual {p0, v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->setRetainInstance(Z)V

    .line 119
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;)V

    .line 120
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "ccl-start-cast-activity"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->c(Ljava/lang/String;)Z

    move-result v6

    .line 122
    if-eqz v6, :cond_2

    .line 123
    iput-boolean v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

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
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->n:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    .line 130
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    .line 131
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    .line 1206
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b(Z)V

    .line 1207
    if-eqz v1, :cond_3

    .line 1210
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setSubTitle(Ljava/lang/String;)V

    .line 1212
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$1;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f:Ljava/lang/Thread;

    .line 1220
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1223
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g:Ljava/util/Timer;

    .line 1224
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g:Ljava/util/Timer;

    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v3, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f:Ljava/lang/Thread;

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Ljava/lang/Thread;)V

    invoke-interface {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->d()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1210
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 134
    :cond_5
    if-eqz v5, :cond_0

    .line 135
    sget-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->n:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

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

    .line 1239
    :goto_3
    iput-object v5, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    .line 1240
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e()V

    .line 1242
    :try_start_1
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget-object v5, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/d;->b()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setStreamType(I)V

    .line 1243
    if-eqz v1, :cond_8

    .line 1245
    const/4 v1, 0x4

    iput v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 1246
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V

    .line 1247
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v4, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/d;ZILorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1265
    :goto_4
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h()V

    .line 1266
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g()V

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    const-string v0, "VideoCastContrFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to unmarshalize custom data string: customData= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move v1, v3

    .line 149
    goto :goto_3

    .line 1250
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1251
    const/4 v0, 0x2

    iput v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    .line 1255
    :goto_5
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iget v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setPlaybackStatus(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1257
    :catch_1
    move-exception v0

    .line 1258
    const-string v1, "VideoCastContrFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get playback and media information"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Wait a sec, not connected yet. "

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1262
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    goto :goto_4

    .line 1253
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->l:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b:Z

    .line 99
    check-cast p1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h:Landroid/os/Handler;

    .line 101
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f()V

    .line 1629
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    .line 1630
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1634
    iput-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->f:Ljava/lang/Thread;

    .line 1636
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->D()Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1638
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->E()V

    .line 1640
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-eqz v0, :cond_3

    .line 1641
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->m:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 1643
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1644
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1646
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    if-eqz v0, :cond_5

    .line 1647
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->o:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    invoke-static {v0, v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1649
    :cond_5
    sget-boolean v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    if-eqz v0, :cond_6

    .line 1650
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->g:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 1653
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;)V

    .line 409
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 410
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->m:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 197
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    .line 199
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 200
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 155
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-nez v2, :cond_0

    .line 159
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v2

    iput-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->m:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    if-nez v2, :cond_1

    .line 161
    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;B)V

    iput-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->m:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->I()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->H()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->k()Z

    move-result v2

    if-nez v2, :cond_7

    .line 170
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v2

    if-ne v2, v1, :cond_5

    :cond_4
    move v0, v1

    .line 173
    :cond_5
    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    if-nez v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i:Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 191
    :cond_6
    :goto_0
    return-void

    .line 178
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->m:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$b;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 179
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->g()V

    .line 180
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->p:Z

    if-nez v0, :cond_6

    .line 181
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->i()V

    .line 184
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c:Lcom/google/android/gms/cast/d;

    .line 185
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e()V

    .line 186
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->h()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :goto_1
    const-string v1, "VideoCastContrFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get media information or status of media playback"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 471
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->j:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 475
    :cond_0
    return-void
.end method
