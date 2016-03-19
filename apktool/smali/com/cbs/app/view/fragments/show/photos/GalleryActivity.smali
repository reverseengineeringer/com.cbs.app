.class public Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageButton;

.field private j:Lcom/cbs/app/widget/TouchTimeoutParent;

.field private k:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/AlbumPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/cbs/app/view/model/Show;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Lcom/cbs/app/view/model/ShowAlbum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->b:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$1;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 108
    iput v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->m:I

    .line 109
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->n:Lcom/cbs/app/view/model/Show;

    .line 113
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->q:Lcom/cbs/app/view/model/ShowAlbum;

    .line 774
    return-void
.end method

.method private a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/AlbumPhoto;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    invoke-virtual {p2}, Lcom/cbs/app/view/model/AlbumPhoto;->getFilepath()Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->q:Lcom/cbs/app/view/model/ShowAlbum;

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Show;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->q:Lcom/cbs/app/view/model/ShowAlbum;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowAlbum;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_1

    .line 354
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 355
    const-string v2, " "

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 357
    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 361
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "photos/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->q:Lcom/cbs/app/view/model/ShowAlbum;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/ShowAlbum;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbs/app/view/model/AlbumPhoto;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_1
    return-object v0

    .line 359
    :cond_1
    const-string v1, "blah"

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V
    .locals 2

    .prologue
    .line 65
    .line 2315
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2316
    if-eqz v0, :cond_0

    .line 2317
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2320
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2322
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->b:Z

    .line 65
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V
    .locals 2

    .prologue
    .line 65
    .line 2332
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2333
    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 2336
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2337
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2339
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->b:Z

    .line 65
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 396
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iget-object v0, v0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    .line 397
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/model/AlbumPhoto;

    if-eqz v1, :cond_0

    .line 402
    check-cast v0, Lcom/cbs/app/view/model/AlbumPhoto;

    .line 406
    new-instance v1, Lcom/cbs/app/service/social/FacebookServiceImplV2;

    invoke-direct {v1, p0}, Lcom/cbs/app/service/social/FacebookServiceImplV2;-><init>(Landroid/content/Context;)V

    .line 408
    invoke-interface {v1, v0}, Lcom/cbs/app/service/social/FacebookService;->a(Lcom/cbs/app/view/model/AlbumPhoto;)V

    .line 410
    sget-object v1, Lcom/cbs/app/analytics/Action;->aY:Lcom/cbs/app/analytics/Action;

    .line 411
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 412
    const-string v3, "events"

    const-string v4, "event19,event10"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v3, "ShowTitle"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v3, "showId"

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v3, "AlbumID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getAlbumId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v3, "PhotoTitle"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v3, "PhotoID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {p0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 428
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 431
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iget-object v0, v0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    .line 432
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/model/AlbumPhoto;

    if-eqz v1, :cond_0

    .line 437
    check-cast v0, Lcom/cbs/app/view/model/AlbumPhoto;

    .line 438
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->g()Ljava/lang/String;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->n:Lcom/cbs/app/view/model/Show;

    invoke-direct {p0, v2, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/AlbumPhoto;)Ljava/lang/String;

    move-result-object v2

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Check out this photo I found on my "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with the CBS App! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    new-instance v2, Lcom/cbs/app/service/social/Twitter;

    invoke-direct {v2, p0}, Lcom/cbs/app/service/social/Twitter;-><init>(Landroid/content/Context;)V

    .line 443
    new-instance v3, Lcom/cbs/app/service/social/model/TweetOperation;

    invoke-direct {v3, v1}, Lcom/cbs/app/service/social/model/TweetOperation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/cbs/app/service/social/Twitter;->a(Lcom/cbs/app/service/social/model/TweetOperation;)V

    .line 445
    sget-object v1, Lcom/cbs/app/analytics/Action;->aX:Lcom/cbs/app/analytics/Action;

    .line 446
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 447
    const-string v3, "events"

    const-string v4, "event19,event10"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v3, "ShowTitle"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v3, "showId"

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v3, "AlbumID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getAlbumId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v3, "PhotoTitle"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v3, "PhotoID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-static {p0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 462
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f()V

    return-void
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 465
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iget-object v0, v0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    .line 466
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/model/AlbumPhoto;

    if-eqz v1, :cond_0

    .line 471
    check-cast v0, Lcom/cbs/app/view/model/AlbumPhoto;

    .line 472
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->g()Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->n:Lcom/cbs/app/view/model/Show;

    invoke-direct {p0, v2, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/AlbumPhoto;)Ljava/lang/String;

    move-result-object v2

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Check out this photo I found on my "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with the CBS App! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    new-instance v2, Lcom/cbs/app/service/social/EmailServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/social/EmailServiceImpl;-><init>()V

    .line 477
    invoke-interface {v2, p0}, Lcom/cbs/app/service/social/EmailService;->setContext(Landroid/content/Context;)V

    .line 478
    const-string v3, "Photo from CBS"

    invoke-interface {v2, v3, v1}, Lcom/cbs/app/service/social/EmailService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-object v1, Lcom/cbs/app/analytics/Action;->aZ:Lcom/cbs/app/analytics/Action;

    .line 481
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 482
    const-string v3, "events"

    const-string v4, "event19"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v3, "ShowTitle"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v3, "showId"

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v3, "AlbumID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getAlbumId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v3, "PhotoTitle"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v3, "PhotoID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-static {p0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 495
    :cond_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    const-string v1, "Android"

    .line 499
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/cbs/app/view/MainApplication;

    if-eqz v2, :cond_3

    .line 502
    check-cast v0, Lcom/cbs/app/view/MainApplication;

    .line 503
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    const-string v2, "androidphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    const-string v0, "Android Phone"

    .line 520
    :goto_0
    return-object v0

    .line 507
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "androidtablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    const-string v0, "Android Tablet"

    goto :goto_0

    .line 511
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "amazontablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    const-string v0, "Amazon Tablet"

    goto :goto_0

    .line 515
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "amazonphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    const-string v0, "Amazon Phone"

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 726
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 728
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 729
    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 730
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 734
    iput-boolean v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a:Z

    .line 735
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 740
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 744
    :cond_2
    sget-object v0, Lcom/cbs/app/analytics/Action;->ap:Lcom/cbs/app/analytics/Action;

    .line 745
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 746
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string v2, "showId"

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 750
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 753
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 757
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 759
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 760
    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 761
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 764
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a:Z

    .line 765
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 770
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 772
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-static {}, Lcom/cbs/app/view/InterstitialAdManagerV2;->a()V

    .line 120
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_2

    .line 126
    const-string v0, "selected"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->m:I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "selected:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v0, "show_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    .line 129
    const-string v0, "show_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    .line 130
    const-string v0, "show"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->n:Lcom/cbs/app/view/model/Show;

    .line 131
    const-string v0, "showAlbum"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowAlbum;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->q:Lcom/cbs/app/view/model/ShowAlbum;

    .line 132
    const-string v0, "items"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 137
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/model/AlbumPhoto;

    if-eqz v2, :cond_0

    .line 138
    check-cast v0, Lcom/cbs/app/view/model/AlbumPhoto;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "albumPhoto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    :cond_2
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->setContentView(I)V

    .line 164
    const v0, 0x7f0f025f

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_3

    instance-of v1, v0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    if-eqz v1, :cond_3

    .line 167
    check-cast v0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    .line 168
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->setOffscreenPageLimit(I)V

    .line 169
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->m:I

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->setCurrentItem(I)V

    .line 171
    new-instance v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->k:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;

    .line 173
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->k:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->m:I

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->setCurrentItem(I)V

    .line 176
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 180
    :cond_3
    const v0, 0x7f0f00f0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 182
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    .line 185
    :cond_4
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 187
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->g:Landroid/widget/TextView;

    .line 190
    :cond_5
    const v0, 0x7f0f0183

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 192
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    .line 195
    :cond_6
    const v0, 0x7f0f0260

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_7

    instance-of v1, v0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    .line 197
    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    .line 198
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->bringToFront()V

    .line 199
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$2;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_7
    iget v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->m:I

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->setActionbar(I)V

    .line 215
    iget v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->m:I

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->setData(I)V

    .line 217
    const v0, 0x7f0f025e

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_8

    instance-of v1, v0, Lcom/cbs/app/widget/TouchTimeoutParent;

    if-eqz v1, :cond_8

    .line 219
    check-cast v0, Lcom/cbs/app/widget/TouchTimeoutParent;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    .line 221
    new-instance v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;Landroid/app/Activity;)V

    .line 242
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    invoke-virtual {v1, v0}, Lcom/cbs/app/widget/TouchTimeoutParent;->a(Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;)V

    .line 243
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    invoke-virtual {v0}, Lcom/cbs/app/widget/TouchTimeoutParent;->c()V

    .line 246
    :cond_8
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 373
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    const/4 v0, 0x0

    const-string v1, "Facebook"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 377
    const/16 v0, 0xa

    const-string v1, "Twitter"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 380
    const/16 v0, 0x14

    const-string v1, "Email"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020089

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 383
    const/16 v0, 0x1e

    const-string v1, "Close"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 392
    :goto_0
    return v2

    .line 388
    :cond_1
    const/16 v0, 0x28

    const-string v1, "Social"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02018c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 303
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;

    .line 304
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f:Landroid/widget/RelativeLayout;

    .line 305
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->g:Landroid/widget/TextView;

    .line 306
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    .line 307
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->i:Landroid/widget/ImageButton;

    .line 308
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    .line 309
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->k:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;

    .line 310
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    .line 311
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 593
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 624
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 627
    :goto_0
    return v0

    .line 595
    :sswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->finish()V

    move v0, v1

    .line 597
    goto :goto_0

    .line 600
    :sswitch_1
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->d()V

    move v0, v1

    .line 602
    goto :goto_0

    .line 605
    :sswitch_2
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->e()V

    move v0, v1

    .line 607
    goto :goto_0

    .line 610
    :sswitch_3
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->f()V

    move v0, v1

    .line 612
    goto :goto_0

    .line 1524
    :sswitch_4
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1525
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1526
    const v0, 0x7f030095

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1527
    const v0, 0x7f0f0171

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1528
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 1529
    check-cast v0, Landroid/widget/Button;

    .line 1530
    new-instance v3, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$4;

    invoke-direct {v3, p0, v2}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$4;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1538
    :cond_0
    const v0, 0x7f0f0170

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1539
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1540
    check-cast v0, Landroid/widget/TextView;

    .line 1542
    const-string v3, "Share This Photo"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1545
    :cond_1
    const v0, 0x7f0f0261

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1546
    if-eqz v0, :cond_2

    .line 1547
    new-instance v3, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$5;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$5;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    :cond_2
    const v0, 0x7f0f0262

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1557
    if-eqz v0, :cond_3

    .line 1558
    new-instance v3, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$6;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$6;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    :cond_3
    const v0, 0x7f0f0263

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1568
    if-eqz v0, :cond_4

    .line 1569
    new-instance v3, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$7;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$7;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1577
    :cond_4
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    move v0, v1

    .line 616
    goto/16 :goto_0

    .line 619
    :sswitch_5
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->finish()V

    move v0, v1

    .line 621
    goto/16 :goto_0

    .line 593
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_2
        0x14 -> :sswitch_3
        0x1e -> :sswitch_5
        0x28 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 256
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->c()V

    .line 258
    invoke-static {p0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;)V

    .line 259
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    invoke-virtual {v0}, Lcom/cbs/app/widget/TouchTimeoutParent;->b()V

    .line 262
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 265
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 266
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->b()V

    .line 268
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->j:Lcom/cbs/app/widget/TouchTimeoutParent;

    invoke-virtual {v0}, Lcom/cbs/app/widget/TouchTimeoutParent;->a()V

    .line 274
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->w:Lcom/cbs/app/analytics/Action;

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    const-string v2, "pageView"

    const-string v3, "anything"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v2, "showId"

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->p:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 288
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 251
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 293
    return-void
.end method

.method public setActionbar(I)V
    .locals 8

    .prologue
    const v7, 0x7f02006f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 632
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 633
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 634
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 635
    invoke-virtual {v1, v7}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 641
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 644
    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 645
    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 666
    :goto_0
    return-void

    .line 647
    :cond_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/view/LayoutInflater;

    if-eqz v2, :cond_3

    .line 649
    check-cast v0, Landroid/view/LayoutInflater;

    .line 650
    const v2, 0x7f030093

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 651
    if-eqz v2, :cond_2

    .line 652
    const v0, 0x7f0f025c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 654
    check-cast v0, Landroid/widget/TextView;

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :cond_2
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 659
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 661
    :cond_3
    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 662
    invoke-virtual {v1, v7}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 663
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 664
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setData(I)V
    .locals 3

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->b()V

    .line 709
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/AlbumPhoto;

    .line 710
    if-eqz v0, :cond_1

    .line 711
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 713
    if-eqz v1, :cond_0

    .line 714
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 718
    invoke-virtual {v0}, Lcom/cbs/app/view/model/AlbumPhoto;->getPhotoCaption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    :cond_1
    return-void
.end method
