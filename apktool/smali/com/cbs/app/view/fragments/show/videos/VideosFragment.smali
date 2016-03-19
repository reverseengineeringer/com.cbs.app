.class public Lcom/cbs/app/view/fragments/show/videos/VideosFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;

.field private static k:Landroid/net/Uri;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Lcom/google/android/gms/common/api/b;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:J

.field private G:I

.field private final H:Lcom/cbs/app/view/BackButtonListener;

.field private I:Lcom/cbs/app/androiddata/ResponseModelListener;

.field h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

.field i:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

.field private l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private m:Lcom/cbs/app/view/model/Show;

.field private n:Landroid/view/View;

.field private o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

.field private p:Lcom/cbs/app/view/model/VideoData;

.field private q:Ljava/lang/String;

.field private r:Lcom/cbs/app/view/model/ShowConfig;

.field private s:[Lcom/cbs/app/view/model/Asset;

.field private t:I

.field private u:[Lcom/cbs/app/view/model/AssetCarouselItem;

.field private v:I

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->k:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 390
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    .line 107
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    .line 108
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    .line 109
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->q:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->r:Lcom/cbs/app/view/model/ShowConfig;

    .line 111
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->s:[Lcom/cbs/app/view/model/Asset;

    .line 112
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->t:I

    .line 115
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->w:Z

    .line 116
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->x:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    .line 118
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    .line 119
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    .line 120
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->B:I

    .line 121
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    .line 270
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->C:Z

    .line 272
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    .line 273
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    .line 274
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    .line 275
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$3;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->H:Lcom/cbs/app/view/BackButtonListener;

    .line 351
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$4;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->I:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->setRetainInstance(Z)V

    .line 393
    return-void
.end method

.method static synthetic A(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->t:I

    return v0
.end method

.method static synthetic B(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic C(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    return v0
.end method

.method static synthetic D(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic E(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic F(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic G(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic H(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic I(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic J(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic K(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic L(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;I)I
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    return p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;J)J
    .locals 1

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    return-wide p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;Lcom/cbs/app/view/model/VideoData;)Lcom/cbs/app/view/model/VideoData;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 73
    .line 6417
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 6418
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 6419
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v1, :cond_0

    .line 6420
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 6421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Show tablet:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private b(Lcom/cbs/app/view/model/VideoData;)V
    .locals 4

    .prologue
    .line 1231
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    .line 1232
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    .line 1233
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    iget-wide v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->b(Lcom/cbs/app/view/model/VideoData;IJ)V

    .line 1234
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 689
    return-void
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 671
    .line 674
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 675
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    array-length v6, v5

    move v3, v0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 676
    invoke-virtual {v7}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getTotalCount()I

    move-result v4

    add-int/2addr v4, v2

    .line 677
    invoke-virtual {v7}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getPremiumCount()I

    move-result v2

    add-int/2addr v2, v1

    .line 678
    invoke-virtual {v7}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getDelayCount()I

    move-result v1

    add-int/2addr v1, v0

    .line 675
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v0

    .line 681
    :cond_1
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    .line 682
    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    .line 683
    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->B:I

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "total:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " premium:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    return-void
.end method

.method static synthetic l(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private l()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 802
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    const v1, 0x7f0f03be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 803
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    const v2, 0x7f0f03bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 804
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    const v3, 0x7f0f03c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 808
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v3

    .line 810
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 811
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0027

    invoke-virtual {v5, v6, v4, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 812
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    .line 815
    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-double v4, v4

    .line 816
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 817
    long-to-int v4, v4

    .line 819
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 820
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 822
    add-int v6, v4, v5

    sub-int v6, v3, v6

    .line 824
    sub-int v7, v4, v5

    .line 825
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "containerWidth222: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " leftWidth: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " cbsSpacing:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " detailsWidth:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " leftMargin:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 829
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 830
    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 831
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 832
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 833
    if-nez v6, :cond_0

    .line 834
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 835
    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    .line 836
    invoke-virtual {v0, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 843
    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 845
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 846
    invoke-virtual {v4, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 847
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 849
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 851
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 852
    return-void

    .line 838
    :cond_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private m()V
    .locals 9

    .prologue
    const/16 v8, 0x8ae

    const/4 v1, 0x0

    .line 1238
    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    .line 1242
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v2, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    const-wide/16 v4, 0x6494

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "final size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    return-void

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1249
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Classics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1251
    const/4 v0, 0x1

    .line 1253
    :goto_1
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 1254
    invoke-virtual {v4}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getSeasonNum()I

    move-result v5

    .line 1255
    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->getTotalCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1257
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 1262
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "we got size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1264
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1265
    if-nez v1, :cond_5

    .line 1266
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1273
    :cond_5
    :goto_3
    if-nez v1, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    const/16 v1, 0x457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1270
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method static synthetic n(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic o(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic p(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic q(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic r(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic s(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic t(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic u(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic v(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic w(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic x(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic y(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic z(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    .line 560
    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->b()V

    .line 562
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 9

    .prologue
    const v1, 0x7f0f03be

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 888
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5710
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5711
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    const v2, 0x7f0f03bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5712
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    const v3, 0x7f0f03c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5714
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5717
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5719
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5720
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5722
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5856
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 5858
    const-string v0, "show_video_list_fragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 5859
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    if-eqz v2, :cond_0

    .line 5861
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    .line 5862
    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->b(I)V

    .line 5865
    :cond_0
    const-string v0, "show_video_details_fragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 5866
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    if-eqz v2, :cond_1

    .line 5868
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    .line 5869
    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(I)V

    .line 5872
    :cond_1
    const-string v0, "show_details_fragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 5873
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    if-eqz v1, :cond_2

    .line 5874
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found ShowDetailsFragment2totalEpisodeCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "premiumEpisodeCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5875
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    .line 5876
    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a(I)V

    .line 896
    :cond_2
    return-void

    .line 5725
    :cond_3
    if-ne p1, v4, :cond_5

    .line 5731
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide v4, 0x407a400000000000L    # 420.0

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    .line 5735
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5736
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5740
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5741
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5744
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5745
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5746
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5747
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5748
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 5738
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 5751
    :cond_5
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l()V

    goto/16 :goto_0

    .line 5759
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5760
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    const v2, 0x7f0f03bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5761
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    const v3, 0x7f0f03c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5762
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5764
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5766
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5767
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 5769
    :cond_7
    if-ne p1, v4, :cond_b

    .line 5773
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide v4, 0x4080e00000000000L    # 540.0

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    .line 5776
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5777
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5781
    :goto_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5782
    if-eqz v2, :cond_8

    .line 5783
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5784
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5785
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v4, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5788
    :cond_8
    if-eqz v3, :cond_9

    .line 5789
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5790
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5792
    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 5779
    :cond_a
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 5795
    :cond_b
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;)V
    .locals 6

    .prologue
    .line 396
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->a:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 397
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->c:Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    .line 398
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->d:[Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->d:[Landroid/os/Parcelable;

    instance-of v0, v0, [Lcom/cbs/app/view/model/Asset;

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->d:[Landroid/os/Parcelable;

    check-cast v0, [Lcom/cbs/app/view/model/Asset;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->s:[Lcom/cbs/app/view/model/Asset;

    .line 403
    :goto_0
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->f:[Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->f:[Landroid/os/Parcelable;

    instance-of v0, v0, [Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->f:[Landroid/os/Parcelable;

    check-cast v0, [Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    .line 405
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->k()V

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m()V

    .line 410
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->e:[Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->e:[Landroid/os/Parcelable;

    instance-of v0, v0, [Lcom/cbs/app/view/model/AssetCarouselItem;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p1, Lcom/cbs/app/view/fragments/ShowFragmentV2$NewViewInfo;->e:[Landroid/os/Parcelable;

    check-cast v0, [Lcom/cbs/app/view/model/AssetCarouselItem;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->u:[Lcom/cbs/app/view/model/AssetCarouselItem;

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    if-eqz v0, :cond_4

    .line 1947
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1949
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1951
    :cond_2
    const-string v0, "show_details_fragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1952
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    if-eqz v2, :cond_3

    .line 1953
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found ShowDetailsFragment2totalEpisodeCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "premiumEpisodeCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1954
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    .line 1955
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->u:[Lcom/cbs/app/view/model/AssetCarouselItem;

    iget v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    iget v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->B:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a([Lcom/cbs/app/view/model/AssetCarouselItem;III)V

    .line 1961
    :cond_3
    const-string v0, "show_video_list_fragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1962
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    if-eqz v1, :cond_4

    .line 1963
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    .line 1964
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->a(Ljava/util/ArrayList;I)V

    .line 414
    :cond_4
    return-void

    .line 401
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->s:[Lcom/cbs/app/view/model/Asset;

    goto/16 :goto_0
.end method

.method public final a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 3

    .prologue
    .line 902
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$5;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V

    .line 940
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-static {v1, p1, v2, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    .line 942
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/VideoData;IJ)V
    .locals 3

    .prologue
    .line 1061
    iput p2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    .line 1062
    iput-wide p3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    .line 1065
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    .line 1066
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i()V

    .line 1068
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSelectedVideo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSelectedVideo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Active PID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Lcom/cbs/app/view/model/VideoData;IJ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1193
    iput p2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    .line 1194
    iput-wide p3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    .line 1197
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1198
    :cond_0
    if-eqz p1, :cond_2

    .line 1199
    const/4 v1, 0x0

    .line 1200
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSelectedVideo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :goto_0
    if-eqz v0, :cond_2

    .line 1211
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v2, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1212
    const-string v1, "videoData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1213
    sget-boolean v1, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v1, :cond_1

    .line 1214
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1217
    :cond_1
    const-string v1, "resumeTime"

    iget-wide v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1218
    const-string v1, "resumeMode"

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 1225
    :cond_2
    return-void

    .line 1203
    :cond_3
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSelectedVideo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Active PID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getActivePid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1207
    :cond_4
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-string v3, "You are already watching this video."

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/AbstractFragmentActivity;

    .line 568
    invoke-virtual {v0}, Lcom/cbs/app/view/AbstractFragmentActivity;->c()V

    .line 571
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 6

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showVideoData :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1023
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->t:I

    .line 1024
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_4

    .line 1025
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1027
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1028
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    if-eqz v1, :cond_1

    .line 1029
    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 1030
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 1033
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1035
    const v0, 0x7f0f03bd

    .line 1036
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1037
    :cond_2
    const v0, 0x7f0f03c0

    .line 1040
    :cond_3
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1041
    if-eqz v2, :cond_4

    .line 1042
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;-><init>()V

    .line 1043
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v2, v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1044
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1045
    const-string v4, "show"

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1047
    const-string v4, "showSeasons"

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1048
    const-string v4, "orderedShowSeasonNumbers"

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1049
    const-string v4, "selection"

    iget v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->v:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    const-string v4, "selectedVideo"

    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1051
    invoke-virtual {v2, v3}, Lcom/cbs/app/view/fragments/show/videos/VideoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1052
    const-string v3, "show_video_list_fragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1053
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1058
    :cond_4
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 1096
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->t:I

    .line 1098
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1099
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1100
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    if-eqz v1, :cond_0

    .line 1102
    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 1103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 1106
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1107
    const-string v1, "show"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1108
    const-string v1, "configuration"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->r:Lcom/cbs/app/view/model/ShowConfig;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1109
    const-string v1, "assets"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->s:[Lcom/cbs/app/view/model/Asset;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1110
    const-string v1, "assetCarousel"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->u:[Lcom/cbs/app/view/model/AssetCarouselItem;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bundle Values: total"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " premium:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1112
    const-string v1, "totalEpisodeCount"

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1113
    const-string v1, "premiumEpisodeCount"

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1114
    const-string v1, "delayedEpisodeCount"

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1115
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1116
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1117
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;-><init>()V

    .line 1118
    invoke-virtual {v2, v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1119
    const v0, 0x7f0f03bd

    .line 1120
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1121
    :cond_1
    const v0, 0x7f0f03bf

    .line 1123
    :cond_2
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1124
    if-eqz v3, :cond_3

    .line 1125
    const-string v3, "show_details_fragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1126
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1131
    :cond_3
    return-void
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 1138
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->t:I

    .line 1139
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1140
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1141
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    if-eqz v1, :cond_0

    .line 1143
    check-cast v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;

    .line 1144
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->setVideoShowing(Lcom/cbs/app/view/model/VideoData;)V

    .line 1146
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1147
    const-string v1, "show"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1149
    const-string v1, "pid"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    iget-boolean v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->C:Z

    if-eqz v1, :cond_3

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRefreshing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1153
    const-string v1, "videoData"

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->getVideoData()Lcom/cbs/app/view/model/VideoData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1163
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    .line 1164
    const/4 v1, 0x0

    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    .line 1166
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_2

    .line 1168
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1169
    if-eqz v1, :cond_2

    .line 1171
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1172
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;-><init>()V

    .line 1173
    invoke-virtual {v2, v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1174
    const v0, 0x7f0f03bd

    .line 1175
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    const v0, 0x7f0f03bf

    .line 1179
    :cond_1
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1180
    if-eqz v3, :cond_2

    .line 1181
    const-string v3, "show_video_details_fragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1182
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1190
    :cond_2
    return-void

    .line 1156
    :cond_3
    const-string v1, "videoData"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1157
    const-string v1, "configuration"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->r:Lcom/cbs/app/view/model/ShowConfig;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1158
    const-string v1, "assets"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->s:[Lcom/cbs/app/view/model/Asset;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1159
    const-string v1, "resumeTime"

    iget-wide v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1160
    const-string v1, "resumeMode"

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 661
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 663
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->d(Landroid/content/Context;)V

    .line 664
    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(I)V

    .line 667
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 450
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    .line 452
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->k()V

    .line 454
    const v0, 0x7f03010c

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    .line 455
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_e

    .line 456
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->c:Z

    .line 2693
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_2

    .line 2694
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 2695
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->H:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 463
    const-string v0, "show_item"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3550
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-nez v2, :cond_3

    .line 3551
    new-instance v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-direct {v2}, Lcom/cbs/app/view/fragments/show/model/ShowItem;-><init>()V

    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 3553
    :cond_3
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v2, v0}, Lcom/cbs/app/view/fragments/show/model/ShowItem;->setBundle(Landroid/os/Bundle;)V

    .line 464
    const-string v0, "show"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    .line 465
    const-string v0, "pid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->x:Ljava/lang/String;

    .line 466
    const-string v0, "configuration"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowConfig;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->r:Lcom/cbs/app/view/model/ShowConfig;

    .line 467
    const-string v0, "isRefreshing"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->C:Z

    .line 469
    const-string v0, "assets"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    instance-of v2, v0, [Lcom/cbs/app/view/model/Asset;

    if-eqz v2, :cond_4

    .line 471
    check-cast v0, [Lcom/cbs/app/view/model/Asset;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->s:[Lcom/cbs/app/view/model/Asset;

    .line 474
    :cond_4
    const-string v0, "showSeasons"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_5

    instance-of v2, v0, [Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    if-eqz v2, :cond_5

    .line 476
    check-cast v0, [Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showSeasons.size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o:[Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->k()V

    .line 486
    :cond_5
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m()V

    .line 488
    const-string v0, "carousel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_6

    array-length v2, v0

    if-lez v2, :cond_6

    instance-of v2, v0, [Lcom/cbs/app/view/model/AssetCarouselItem;

    if-eqz v2, :cond_6

    .line 490
    check-cast v0, [Lcom/cbs/app/view/model/AssetCarouselItem;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->u:[Lcom/cbs/app/view/model/AssetCarouselItem;

    .line 494
    :cond_6
    const-string v0, "selectedVideo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    .line 495
    const-string v0, "selectedVideoId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->q:Ljava/lang/String;

    .line 497
    const-string v0, "resumeTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    .line 498
    const-string v0, "resumeMode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    .line 499
    const-string v0, "resumeTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 500
    const-string v0, "resumeMode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_7

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "selectedVideo: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v0, "selectedVideo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 507
    :cond_7
    const-string v0, "dontShowPlayer"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 508
    if-eqz v0, :cond_8

    .line 509
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->w:Z

    .line 513
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->w:Z

    if-nez v0, :cond_9

    .line 515
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->b(Lcom/cbs/app/view/model/VideoData;)V

    .line 516
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->w:Z

    .line 3976
    :cond_9
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->d()V

    .line 3978
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    if-eqz v0, :cond_c

    .line 3984
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3985
    :cond_a
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g()V

    .line 3987
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->x:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 3990
    :cond_b
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i()V

    .line 521
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4881
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4882
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4883
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(I)V

    .line 525
    :cond_d
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/appindexing/b;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->b()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->D:Lcom/google/android/gms/common/api/b;

    .line 527
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 529
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 534
    :cond_e
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    return-object v0

    .line 3992
    :cond_f
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->C:Z

    if-eqz v0, :cond_10

    .line 3993
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i()V

    .line 3994
    iput-boolean v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->C:Z

    goto :goto_0

    .line 3998
    :cond_10
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h()V

    goto :goto_0

    .line 4003
    :cond_11
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->w:Z

    if-nez v0, :cond_12

    .line 4004
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g()V

    .line 4006
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->b(Lcom/cbs/app/view/model/VideoData;)V

    .line 4007
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->w:Z

    goto :goto_0

    .line 4009
    :cond_12
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_13

    .line 4010
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->setSelectedVideo(Lcom/cbs/app/view/model/VideoData;)V

    goto :goto_0

    .line 4012
    :cond_13
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 637
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 640
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->d()V

    .line 5701
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 5702
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 5703
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->H:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/NavigationActivity;->b(Lcom/cbs/app/view/BackButtonListener;)V

    .line 643
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n:Landroid/view/View;

    .line 647
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 651
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 655
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 657
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->d()V

    .line 619
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 620
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    .line 622
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i:Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V

    .line 576
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->e:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-wide v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->f:Ljava/lang/String;

    .line 580
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 581
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y:Z

    .line 585
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 589
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStart()V

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->D:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->c()V

    .line 594
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/GoogleAppIndexDeepLinkUtil;->b(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 599
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 601
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - CBS.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    sget-object v3, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->D:Lcom/google/android/gms/common/api/b;

    invoke-interface {v3, v4, v0, v2, v1}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 626
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStop()V

    .line 628
    :try_start_0
    sget-object v0, Lcom/google/android/gms/appindexing/b;->c:Lcom/google/android/gms/appindexing/c;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->D:Lcom/google/android/gms/common/api/b;

    sget-object v2, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->k:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appindexing/c;->a(Lcom/google/android/gms/common/api/b;Landroid/net/Uri;)Lcom/google/android/gms/common/api/c;

    .line 629
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->D:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 539
    invoke-super {p0, p1, p2}, Lcom/cbs/app/view/AbstractAsyncFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 541
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectedVideoId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 544
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->I:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 545
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectedVideoId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 547
    :cond_0
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "show_item"

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/model/ShowItem;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 432
    :cond_0
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->setArguments(Landroid/os/Bundle;)V

    .line 433
    return-void
.end method

.method public setSelectedVideo(Lcom/cbs/app/view/model/VideoData;)V
    .locals 4

    .prologue
    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    .line 1081
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    .line 1082
    iget v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->G:I

    iget-wide v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->F:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/model/VideoData;IJ)V

    .line 1083
    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .prologue
    .line 1091
    iput p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->v:I

    .line 1092
    return-void
.end method

.method public setShowItem(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 437
    return-void
.end method
