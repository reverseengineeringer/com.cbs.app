.class public Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field private B:Lcom/cbs/app/db/MyShowDataSource;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:[Lcom/cbs/app/view/model/ShowVideo;

.field private H:J

.field private I:Z

.field private J:Landroid/widget/ListView;

.field private K:Z

.field private L:Landroid/widget/GridView;

.field private M:Z

.field private N:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

.field h:Lcom/cbs/app/androiddata/ResponseModelListener;

.field i:Lcom/cbs/app/androiddata/ResponseModelListener;

.field j:Lcom/cbs/app/androiddata/ResponseModelListener;

.field k:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

.field l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field m:Lcom/cbs/app/androiddata/ResponseModelListener;

.field n:Lcom/cbs/app/androiddata/ResponseModelListener;

.field o:Lcom/cbs/app/androiddata/ResponseModelListener;

.field p:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

.field private final r:Landroid/view/View$OnClickListener;

.field private s:Z

.field private t:Lcom/cbs/app/view/model/FavoriteShowList;

.field private u:Landroid/view/View;

.field private v:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field private w:Landroid/view/View;

.field private x:Z

.field private y:Z

.field private z:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$1;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->r:Landroid/view/View$OnClickListener;

    .line 94
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->s:Z

    .line 97
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->u:Landroid/view/View;

    .line 99
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    .line 101
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->y:Z

    .line 105
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$10;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 150
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    .line 151
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->E:Landroid/widget/LinearLayout;

    .line 152
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->F:Landroid/widget/LinearLayout;

    .line 154
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->H:J

    .line 158
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->I:Z

    .line 164
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$11;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$11;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 220
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$12;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 280
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$13;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$13;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->j:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 329
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$14;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$14;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->k:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    .line 351
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$15;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$15;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 395
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->M:Z

    .line 422
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->m:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 481
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$17;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$17;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->n:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 517
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$2;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->o:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 566
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$3;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->p:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    .line 1360
    return-void
.end method

.method static synthetic A(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic B(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)[Lcom/cbs/app/view/model/ShowVideo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    return-object v0
.end method

.method static synthetic C(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->k()V

    return-void
.end method

.method static synthetic D(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic E(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic F(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic G(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic H(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->H:J

    return-wide v0
.end method

.method static synthetic I(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic J(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic K(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->M:Z

    return v0
.end method

.method static synthetic L(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->s:Z

    return v0
.end method

.method static synthetic M(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic N(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic O(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic P(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;J)J
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->H:J

    return-wide p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->u:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Lcom/cbs/app/view/fragments/show/model/ShowItem;)Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->v:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Lcom/cbs/app/view/model/FavoriteShowList;)Lcom/cbs/app/view/model/FavoriteShowList;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    return-object p1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 946
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 947
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 948
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 950
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 954
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;Lcom/cbs/app/view/model/VideoData;)V
    .locals 4

    .prologue
    .line 72
    .line 4323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4324
    const-string v1, "appState"

    const-string v2, "cbscom:Homescreen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4325
    const-string v1, "ShowTitle"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4326
    const-string v1, "showId"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4327
    const-string v1, "EpisodeTitle"

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4328
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4329
    const-string v1, "VideoID"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4331
    const-string v2, "evar_31"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4332
    const-string v2, "prop_31"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4334
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4335
    const-string v1, "ContentID"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4337
    const-string v2, "evar_64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4338
    const-string v2, "prop_64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4339
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4342
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPaid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4343
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4344
    const-string v1, "Regular"

    .line 4345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";Season "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";episode button"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4347
    const-string v2, "evar_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4348
    const-string v2, "prop_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4350
    :cond_2
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4351
    const-string v1, "evar_6"

    const-string v2, "CBS svod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4352
    const-string v1, "prop_6"

    const-string v2, "CBS svod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4354
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4355
    const-string v2, "evar_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4356
    const-string v2, "prop_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4357
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v2, Lcom/cbs/app/analytics/Action;->aB:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;[Lcom/cbs/app/view/model/ShowVideo;)[Lcom/cbs/app/view/model/ShowVideo;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    return-object p1
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/model/FavoriteShowList;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->K:Z

    return v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->v:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->l()V

    return-void
.end method

.method static synthetic i(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 865
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 866
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->o:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 867
    return-void
.end method

.method static synthetic k(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private k()V
    .locals 7

    .prologue
    const v4, 0x7f0d0027

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 963
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 964
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->y:Z

    if-nez v0, :cond_6

    .line 968
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 2259
    iput-boolean v6, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->y:Z

    .line 2262
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    const-string v1, "EDIT"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2266
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2267
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2268
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2269
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$8;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$8;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    .line 2275
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2277
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 2280
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    const-string v1, "EDIT"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2281
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2282
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2283
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$9;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$9;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    .line 2290
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2293
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->E:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 2294
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2297
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->F:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 2298
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2301
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    const v1, 0x7f0f022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2303
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list view footer count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2305
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2307
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2308
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 2311
    :cond_4
    new-instance v1, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    iget-boolean v4, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->x:Z

    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->r:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;-><init>(Landroid/content/Context;[Lcom/cbs/app/view/model/ShowVideo;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2313
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2316
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->z:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;

    if-eqz v0, :cond_5

    .line 2317
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->z:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;

    invoke-interface {v0, v6}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;->a(I)V

    .line 978
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 979
    return-void

    .line 973
    :cond_6
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->m()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private l()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f0f0234

    const v6, 0x7f0f0231

    const v5, 0x7f0d0066

    const/4 v4, 0x0

    .line 1109
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1110
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    if-eqz v0, :cond_4

    .line 1111
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newList.size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1115
    const-string v2, "Tap on a show below to add or remove it from My CBS."

    .line 1117
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1120
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    const v3, 0x7f0d0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1121
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1122
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    const v3, 0x7f0d0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1130
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1131
    if-eqz v0, :cond_1

    .line 1132
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1138
    :cond_2
    const-string v2, "My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Choose your shows below."

    .line 1139
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 1140
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1141
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1142
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1143
    if-eqz v0, :cond_3

    .line 1144
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1149
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1150
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1151
    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1158
    :cond_4
    const-string v2, "My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Choose your shows below."

    .line 1160
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 1161
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1162
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1163
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1164
    if-eqz v0, :cond_5

    .line 1165
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1170
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1171
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1172
    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic m(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1205
    iput-boolean v4, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->y:Z

    .line 1208
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$7;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$7;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    .line 1216
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    const-string v2, "DONE"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 1222
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    const-string v2, "DONE"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    const v1, 0x7f0f022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1226
    if-eqz v0, :cond_2

    .line 1227
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1229
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->E:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 1233
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1244
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3983
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b()V

    .line 3985
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 3986
    if-eqz v0, :cond_5

    .line 3987
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 3988
    if-eqz v0, :cond_5

    .line 3989
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    .line 3993
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->N:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getAllShows()V

    .line 1248
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->z:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;

    if-eqz v0, :cond_7

    .line 1249
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->z:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;

    invoke-interface {v0, v4}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;->a(I)V

    .line 1252
    :cond_7
    return-void

    .line 1237
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->F:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 1239
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic o(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic p(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic q(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->I:Z

    return v0
.end method

.method static synthetic r(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic s(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic t(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic u(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->s:Z

    return v0
.end method

.method static synthetic v(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic w(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic x(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic y(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic z(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 917
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    if-eqz v0, :cond_4

    .line 918
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 921
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    .line 922
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->k()V

    .line 942
    :goto_0
    return-void

    .line 924
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b()V

    .line 925
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shows: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/FavoriteShow;

    .line 929
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v3

    .line 930
    if-eqz v3, :cond_2

    .line 931
    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 934
    :cond_3
    invoke-static {v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 936
    new-instance v1, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 937
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->m:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/cbs/app/service/ShowService;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0

    .line 940
    :cond_4
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->m()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 871
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f0b00e9

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 872
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$4;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$4;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 881
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 882
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 883
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 885
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 889
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f0b00e9

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 891
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$5;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$5;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 906
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 907
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 908
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 910
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 7

    .prologue
    const-wide/high16 v4, 0x4065000000000000L    # 168.0

    const/4 v6, 0x0

    .line 1006
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showItems:Ljava/util/ArrayList;

    .line 1007
    if-eqz v2, :cond_7

    .line 1008
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->l()V

    .line 3038
    if-eqz v2, :cond_1

    .line 3039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "list not null:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3040
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$6;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$6;-><init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3055
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->x:Z

    if-eqz v0, :cond_3

    .line 3057
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 3059
    new-instance v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-boolean v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->x:Z

    const v4, 0x7f03005e

    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZILcom/cbs/app/view/model/FavoriteShowList;)V

    .line 3061
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3063
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3064
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 3065
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 3068
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3069
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3070
    if-eqz v0, :cond_2

    .line 3071
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->A:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1015
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 1016
    return-void

    .line 3073
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setClickable(Z)V

    goto :goto_0

    .line 3078
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 3080
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3082
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 3083
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3084
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 3093
    :goto_1
    new-instance v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-boolean v3, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->x:Z

    const v4, 0x7f03005f

    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZILcom/cbs/app/view/model/FavoriteShowList;)V

    .line 3095
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3096
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3097
    if-eqz v0, :cond_6

    .line 3098
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->A:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 3086
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_1

    .line 3090
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 3091
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_1

    .line 3100
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setClickable(Z)V

    goto :goto_0

    .line 1013
    :cond_7
    const-string v0, "CBS"

    const-string v1, "Unable to retrieve favorite list from CBS Server. Please try again later."

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    if-eqz v0, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->x:Z

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;

    .line 1023
    if-eqz v0, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-virtual {v0, v1}, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->setNewMyShowList(Lcom/cbs/app/view/model/FavoriteShowList;)V

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->x:Z

    if-eqz v0, :cond_2

    .line 1028
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;

    .line 1029
    if-eqz v0, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-virtual {v0, v1}, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->setNewMyShowList(Lcom/cbs/app/view/model/FavoriteShowList;)V

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 1035
    :cond_2
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1181
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    if-nez v2, :cond_0

    .line 1191
    :goto_0
    return v0

    .line 1184
    :cond_0
    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->y:Z

    .line 1185
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->t:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1187
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->j()V

    :goto_1
    move v0, v1

    .line 1191
    goto :goto_0

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-string v2, "You didn\'t add any shows."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public getMyShowsForEditList()V
    .locals 3

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b()V

    .line 1000
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 1001
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->j:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1002
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->m()V

    .line 1197
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 659
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 610
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->K:Z

    .line 612
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 726
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 728
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->k()V

    .line 729
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 619
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onCreate(Landroid/os/Bundle;)V

    .line 621
    new-instance v0, Lcom/cbs/app/db/MyShowDataSource;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    .line 622
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->N:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    .line 623
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->N:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->k:Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->setShowServiceListener(Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;)V

    .line 624
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b()V

    .line 633
    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->c:Z

    .line 634
    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->x:Z

    .line 635
    const v0, 0x7f030089

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    .line 637
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    .line 638
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->D:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v1, 0x7f0f02dc

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    .line 643
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    const v1, 0x7f0f0230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->E:Landroid/widget/LinearLayout;

    .line 648
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    const v1, 0x7f0f0233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->F:Landroid/widget/LinearLayout;

    .line 649
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    const v1, 0x7f0f0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    .line 650
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    const v1, 0x7f0f0232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    .line 652
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    return-object v0

    :cond_3
    move v0, v1

    .line 634
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 699
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 700
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->w:Landroid/view/View;

    .line 701
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->N:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->c()V

    .line 704
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->J:Landroid/widget/ListView;

    .line 705
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->L:Landroid/widget/GridView;

    .line 706
    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    .line 707
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 708
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 713
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->K:Z

    .line 717
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 691
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 692
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 693
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 665
    iput-object v9, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 666
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 671
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a()Z

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->l:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 673
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 678
    if-nez v0, :cond_e

    .line 679
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    .line 1738
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1739
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1741
    if-eqz v4, :cond_2

    .line 1742
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->s:Z

    .line 1744
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->j()V

    .line 684
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->d()V

    .line 685
    return-void

    .line 1747
    :cond_2
    iget-boolean v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->I:Z

    if-nez v1, :cond_1

    .line 1749
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->I:Z

    .line 1751
    const-string v1, "My CBS"

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 1755
    instance-of v1, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    .line 1758
    :goto_1
    if-eqz v0, :cond_1

    .line 1762
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1763
    invoke-static {v9}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 1764
    invoke-static {v9}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1765
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1766
    sput-boolean v2, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->h:Z

    .line 1767
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 1770
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 1778
    :cond_4
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    if-nez v1, :cond_5

    .line 1779
    new-instance v1, Lcom/cbs/app/db/MyShowDataSource;

    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v1, v5}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    .line 1781
    :cond_5
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 1782
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v1

    .line 1783
    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v5}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 1784
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 1786
    :cond_6
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->m()V

    .line 1794
    :goto_2
    if-eqz v4, :cond_c

    .line 1795
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->s:Z

    .line 1797
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->p:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;-><init>(Landroid/content/Context;Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;)V

    .line 1798
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a()V

    goto :goto_0

    .line 1788
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1789
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->M:Z

    .line 1840
    :cond_8
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 1841
    iget-object v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v1}, Lcom/cbs/app/db/MyShowDataSource;->getAllShows()Ljava/util/List;

    move-result-object v1

    .line 1842
    iget-object v5, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->B:Lcom/cbs/app/db/MyShowDataSource;

    invoke-virtual {v5}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 1843
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 1845
    :cond_9
    iput-object v9, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->G:[Lcom/cbs/app/view/model/ShowVideo;

    .line 1846
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->k()V

    goto :goto_2

    .line 1849
    :cond_a
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->b()V

    .line 1850
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1851
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/db/MyShow;

    .line 1852
    invoke-virtual {v1}, Lcom/cbs/app/view/model/db/MyShow;->getShowId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1854
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "shows: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1855
    new-instance v1, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1856
    iget-object v6, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->m:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v1, v6, v5, v7, v8}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_2

    .line 1801
    :cond_c
    iget-boolean v1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->I:Z

    if-nez v1, :cond_1

    .line 1803
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->I:Z

    .line 1805
    const-string v1, "My CBS"

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 1810
    instance-of v1, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    .line 1813
    :goto_4
    if-eqz v0, :cond_1

    .line 1817
    invoke-static {v9}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 1818
    invoke-static {v9}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 1819
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 1820
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1821
    sput-boolean v2, Lcom/cbs/app/view/fragments/mycbs/NewMyCBSFragment;->h:Z

    .line 1822
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 1825
    :cond_d
    iget-object v0, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 681
    :cond_e
    invoke-static {v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setSocialWasShowing(Z)V

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto :goto_4

    :cond_10
    move v0, v3

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 721
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 723
    return-void
.end method

.method public setMenuChangeListener(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment;->z:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$MenuChangeListener;

    .line 606
    return-void
.end method
