.class public Lcom/cbs/app/widget/ScheduleGridLayout;
.super Landroid/widget/GridLayout;
.source "SourceFile"


# static fields
.field private static final t:Ljava/lang/String;

.field private static u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/view/View;

.field private G:Z

.field private H:Landroid/widget/GridLayout$LayoutParams;

.field private I:Lcom/cbs/app/view/model/Show;

.field private J:Lcom/cbs/app/view/model/Episode;

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Show;",
            ">;"
        }
    .end annotation
.end field

.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Ljava/lang/String;

.field g:Landroid/widget/Button;

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Lcom/cbs/app/view/model/VideoData;

.field p:Z

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/app/ProgressDialog;

.field s:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/widget/ScheduleGridLayout;->t:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/widget/ScheduleGridLayout;->u:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x6

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->v:I

    .line 68
    iput v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->w:I

    .line 69
    const/16 v0, 0x19

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->x:I

    .line 70
    iput v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->y:I

    .line 73
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    .line 74
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->b:Z

    .line 75
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    .line 76
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    .line 77
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    .line 78
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->f:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->i:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->j:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->k:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->m:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->n:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/cbs/app/view/model/VideoData;

    invoke-direct {v0}, Lcom/cbs/app/view/model/VideoData;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->o:Lcom/cbs/app/view/model/VideoData;

    .line 88
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->p:Z

    .line 89
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    .line 90
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    .line 92
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->A:Z

    .line 95
    iput v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    .line 96
    iput v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 97
    iput v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->E:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 109
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->K:Ljava/util/ArrayList;

    .line 111
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->L:Ljava/util/List;

    .line 115
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/16 v5, 0x16

    const/4 v4, 0x6

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->v:I

    .line 68
    iput v5, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->w:I

    .line 69
    const/16 v0, 0x19

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->x:I

    .line 70
    iput v5, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->y:I

    .line 73
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->a:Z

    .line 74
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->b:Z

    .line 75
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    .line 76
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    .line 77
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    .line 78
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->f:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->i:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->j:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->k:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->m:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->n:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/cbs/app/view/model/VideoData;

    invoke-direct {v0}, Lcom/cbs/app/view/model/VideoData;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->o:Lcom/cbs/app/view/model/VideoData;

    .line 88
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->p:Z

    .line 89
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->q:Ljava/util/ArrayList;

    .line 90
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    .line 92
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->A:Z

    .line 95
    iput v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    .line 96
    iput v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 97
    iput v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->E:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 109
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->K:Ljava/util/ArrayList;

    .line 111
    iput-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->L:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    .line 121
    invoke-virtual {p0, v4}, Lcom/cbs/app/widget/ScheduleGridLayout;->setColumnCount(I)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->setOrientation(I)V

    .line 123
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 124
    iput v3, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 125
    iput v3, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 126
    invoke-virtual {p0, v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->setUseDefaultMargins(Z)V

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/Show;)Lcom/cbs/app/view/model/Show;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->I:Lcom/cbs/app/view/model/Show;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/cbs/app/widget/ScheduleGridLayout;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/widget/ScheduleGridLayout;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->L:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 946
    const v0, 0x7f0f019e

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 947
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 949
    const v0, 0x7f0f019d

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 950
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/Episode;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    .line 1800
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    .line 1801
    iget-object v5, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    .line 2774
    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2775
    iput-boolean v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->c:Z

    .line 2776
    new-instance v6, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v6}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 2807
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Displaying the Dialog : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2809
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 2812
    :goto_0
    if-nez v0, :cond_2

    .line 2813
    const/4 v0, 0x0

    .line 2779
    :goto_1
    if-eqz v0, :cond_1

    .line 3791
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3793
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    const v4, 0x7f0b01a3

    invoke-direct {v1, v2, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    .line 3795
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 2782
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v2

    .line 4153
    new-instance v4, Lcom/cbs/app/widget/ScheduleGridLayout$1;

    invoke-direct {v4, p0, v0}, Lcom/cbs/app/widget/ScheduleGridLayout$1;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout;Landroid/app/Dialog;)V

    .line 2782
    invoke-interface {v6, v1, v2, v4}, Lcom/cbs/app/service/ShowService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 2783
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v2

    .line 4355
    new-instance v4, Lcom/cbs/app/widget/ScheduleGridLayout$2;

    invoke-direct {v4, p0, v0}, Lcom/cbs/app/widget/ScheduleGridLayout$2;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout;Landroid/app/Dialog;)V

    .line 2783
    invoke-interface {v6, v1, v2, v4}, Lcom/cbs/app/service/ShowService;->b(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 2784
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v2

    .line 4411
    new-instance v4, Lcom/cbs/app/widget/ScheduleGridLayout$3;

    invoke-direct {v4, p0, v0}, Lcom/cbs/app/widget/ScheduleGridLayout$3;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout;Landroid/app/Dialog;)V

    .line 2784
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/cbs/app/service/ShowService;->c(Landroid/content/Context;Ljava/lang/String;ILcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 60
    :cond_1
    return-void

    .line 2815
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showDialog for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    new-instance v2, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show dialog for time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getAirDate_sec()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2821
    const v0, 0x7f030061

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2827
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v7

    .line 2828
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getPressSummary()Ljava/lang/String;

    move-result-object v8

    .line 2829
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    .line 2832
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2833
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2834
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2840
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/view/model/Episode;)Z

    move-result v0

    .line 2841
    iget-object v9, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v9}, Lcom/cbs/app/view/model/Episode;->getIsEpisodeNew()Ljava/lang/String;

    move-result-object v9

    .line 2843
    if-eqz v9, :cond_3

    const-string v10, "True"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2845
    const v9, 0x7f0f01a1

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2847
    :cond_3
    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v9}, Lcom/cbs/app/view/model/Episode;->getDisplay_airdate()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v10}, Lcom/cbs/app/view/model/Episode;->getDayOfWeek()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v4, v9, v10}, Lcom/cbs/app/view/utils/Util;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2851
    const v0, 0x7f0f0170

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2852
    if-eqz v1, :cond_a

    .line 2853
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2857
    :goto_3
    const v0, 0x7f0f01a0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2858
    if-eqz v0, :cond_4

    .line 2859
    if-eqz v4, :cond_b

    .line 2861
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2866
    :cond_4
    :goto_4
    const v0, 0x7f0f01a2

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2867
    if-eqz v0, :cond_5

    .line 2868
    if-eqz v7, :cond_c

    .line 2869
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2874
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->h:I

    .line 2875
    const v0, 0x7f0f01a3

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2876
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->h:I

    const/16 v4, 0x1f4

    if-ge v1, v4, :cond_6

    .line 2877
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 2879
    :cond_6
    if-eqz v0, :cond_7

    .line 2880
    if-eqz v8, :cond_d

    .line 2881
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2882
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2889
    :cond_7
    :goto_6
    const v0, 0x7f0f0171

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2891
    if-eqz v0, :cond_8

    .line 2893
    new-instance v1, Lcom/cbs/app/widget/ScheduleGridLayout$5;

    invoke-direct {v1, p0, v2}, Lcom/cbs/app/widget/ScheduleGridLayout$5;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2921
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2922
    sget-object v0, Lcom/cbs/app/analytics/Action;->be:Lcom/cbs/app/analytics/Action;

    .line 2923
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2924
    const-string v4, "ShowTitle"

    iget-object v7, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v7}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    const-string v4, "showId"

    iget-object v7, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v7}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2927
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "cbscom:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v7}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->J:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v7}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2929
    const-string v7, "evar_63"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2930
    const-string v7, "prop_63"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    const-string v4, "events"

    const-string v7, "event19"

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2933
    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 2935
    :cond_9
    new-instance v0, Lcom/cbs/app/widget/ScheduleGridLayout$6;

    invoke-direct {v0, p0}, Lcom/cbs/app/widget/ScheduleGridLayout$6;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v0, v2

    .line 2941
    goto/16 :goto_1

    .line 2855
    :cond_a
    const-string v1, "Not Available"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2863
    :cond_b
    const-string v1, "Not Available"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2871
    :cond_c
    const-string v1, "Not Available"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2884
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_e
    move-object v1, v0

    goto/16 :goto_2

    :cond_f
    move v0, v4

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/widget/ScheduleGridLayout;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->I:Lcom/cbs/app/view/model/Show;

    return-object v0
.end method

.method private static b(Lcom/cbs/app/view/model/Episode;)Z
    .locals 5

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    if-eqz p0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Episode Title : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v0, Lcom/cbs/app/widget/ScheduleGridLayout;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cbs/app/widget/ScheduleGridLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/cbs/app/widget/ScheduleGridLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Episode;

    .line 141
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getEpisodeNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Episode;->getEpisodeNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->L:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/widget/ScheduleGridLayout;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->K:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/widget/ScheduleGridLayout;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->A:Z

    return v0
.end method

.method public static setTonightEpisodes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    sput-object p0, Lcom/cbs/app/widget/ScheduleGridLayout;->u:Ljava/util/ArrayList;

    .line 132
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/Episode;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getEndTime()Ljava/lang/String;

    move-result-object v3

    .line 1737
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1d

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1d

    .line 1738
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1739
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1740
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1742
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1743
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1744
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1746
    sub-int v0, v3, v4

    .line 1747
    mul-int/lit8 v0, v0, 0x2

    .line 1748
    sub-int v3, v6, v5

    .line 1750
    const/16 v6, 0x19

    if-lt v3, v6, :cond_8

    .line 1751
    add-int/lit8 v0, v0, 0x1

    .line 1756
    :cond_0
    :goto_0
    if-gez v0, :cond_1

    move v0, v2

    .line 1760
    :cond_1
    if-le v0, v1, :cond_2

    const/16 v3, 0x16

    if-lt v4, v3, :cond_2

    const/16 v3, 0x16

    if-lt v5, v3, :cond_2

    move v0, v1

    .line 525
    :cond_2
    :goto_1
    mul-int/lit8 v4, v0, 0x1e

    .line 526
    iput-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 527
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->F:Landroid/view/View;

    const v3, 0x7f0f01bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 530
    iget v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->E:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    const/16 v5, 0xf

    if-gt v3, v5, :cond_3

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "day"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 532
    iget v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    if-nez v3, :cond_9

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Today\n"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_3
    :goto_2
    new-instance v5, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 540
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 544
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getEndTime()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 545
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getEndTime()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 546
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 547
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 550
    :goto_3
    invoke-virtual {p0}, Lcom/cbs/app/widget/ScheduleGridLayout;->setGridImageParams()V

    .line 551
    iget-object v6, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v7, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v8, v8, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v9, v9, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 553
    const/16 v6, 0x96

    if-le v4, v6, :cond_c

    const/16 v6, 0xb4

    if-gt v4, v6, :cond_c

    .line 554
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    invoke-static {v1, v11}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 555
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v3, v3, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v4, v4, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 556
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 558
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideThreeHours()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 559
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideThreeHours()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 678
    :goto_4
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    invoke-static {v1}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 679
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    if-eqz p1, :cond_4

    .line 681
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_4

    const-string v1, "Please check your local listings for more information."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 685
    new-instance v0, Lcom/cbs/app/widget/ScheduleGridLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/cbs/app/widget/ScheduleGridLayout$4;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/Episode;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    :cond_4
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/cbs/app/widget/ScheduleGridLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_5
    iget-boolean v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    if-nez v0, :cond_5

    .line 708
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 709
    invoke-virtual {p0}, Lcom/cbs/app/widget/ScheduleGridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 710
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 712
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 713
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 716
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    :cond_5
    :goto_6
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 723
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->E:I

    .line 725
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->E:I

    if-eq v0, v11, :cond_6

    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    if-ne v0, v11, :cond_7

    .line 726
    :cond_6
    iput v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 727
    iput v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->E:I

    .line 728
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->C:I

    .line 731
    :cond_7
    return-void

    .line 1752
    :cond_8
    if-gez v3, :cond_0

    .line 1753
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 535
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getDayOfWeek()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getAirDateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 562
    :cond_a
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 563
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 568
    :cond_b
    iput-boolean v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 569
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "schedule_placeholder_2"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 573
    :cond_c
    const/16 v6, 0x78

    if-le v4, v6, :cond_f

    const/16 v6, 0x96

    if-gt v4, v6, :cond_f

    .line 574
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    invoke-static {v1, v10}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 575
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    int-to-double v6, v1

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-int v1, v6

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v3, v3, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v4, v4, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 576
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 577
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideOneAndHalfHour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 578
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideOneAndHalfHour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 581
    :cond_d
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 582
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 585
    :cond_e
    iput-boolean v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 586
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "schedule_placeholder_2"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 591
    :cond_f
    const/16 v6, 0x6e

    if-le v4, v6, :cond_12

    const/16 v6, 0x78

    if-gt v4, v6, :cond_12

    .line 592
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 593
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v3, v3, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v4, v4, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 594
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 596
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideTwoHours()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 597
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideTwoHours()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 600
    :cond_10
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 601
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 606
    :cond_11
    iput-boolean v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 607
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "schedule_placeholder_2"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 613
    :cond_12
    const/16 v6, 0x46

    if-le v4, v6, :cond_15

    .line 614
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    invoke-static {v1, v12}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 615
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v1, v6

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v3, v3, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v4, v4, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 616
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 617
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideOneAndHalfHour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 618
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideOneAndHalfHour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 621
    :cond_13
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 622
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 627
    :cond_14
    iput-boolean v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 628
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "schedule_placeholder"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 634
    :cond_15
    const/16 v6, 0x32

    if-le v4, v6, :cond_18

    .line 636
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 637
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v3, v3, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v4, v4, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 638
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    .line 639
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideOneHour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 641
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideOneHour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 644
    :cond_16
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 645
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 651
    :cond_17
    iput-boolean v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 652
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "schedule_placeholder"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 658
    :cond_18
    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v6, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->D:I

    invoke-static {v6, v1}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 659
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v4, v4, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v6, v6, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    iget-object v7, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v7, v7, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    iput v4, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 661
    const/16 v1, 0x17

    if-lt v3, v1, :cond_19

    const/16 v1, 0xa

    if-le v0, v1, :cond_19

    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 662
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_hour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 664
    :cond_19
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideHalfHour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 665
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepathOverrideHalfHour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 668
    :cond_1a
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_halfhour()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 669
    invoke-virtual {p1}, Lcom/cbs/app/view/model/Episode;->getFilepath_halfhour()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    .line 672
    :cond_1b
    iput-boolean v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->G:Z

    .line 673
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "schedule_placeholder"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 703
    :catch_0
    move-exception v0

    .line 704
    sget-object v1, Lcom/cbs/app/widget/ScheduleGridLayout;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 717
    :catch_1
    move-exception v0

    .line 718
    sget-object v1, Lcom/cbs/app/widget/ScheduleGridLayout;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1c
    move v0, v2

    move v3, v2

    goto/16 :goto_3

    :cond_1d
    move v0, v2

    goto/16 :goto_1
.end method

.method public final a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 6

    .prologue
    .line 1096
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1097
    sget-object v0, Lcom/cbs/app/analytics/Action;->be:Lcom/cbs/app/analytics/Action;

    .line 1098
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1099
    const-string v2, "videoTitle"

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v2, "videoId"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v2, "optionSelected"

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 1109
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/VideoData;Landroid/app/Dialog;)V
    .locals 4

    .prologue
    .line 954
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 956
    iget-boolean v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    if-eqz v0, :cond_3

    .line 957
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Displaying data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 958
    const v0, 0x7f0f019e

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 960
    iget-object v1, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 962
    if-lez v1, :cond_1

    .line 963
    iput v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->s:I

    .line 964
    iget v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->s:I

    iget v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->s:I

    int-to-float v2, v2

    const v3, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setWidthAndHeight(II)V

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->i:Ljava/lang/String;

    iget v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->s:I

    invoke-static {v1, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 967
    iget-object v2, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v1, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Lcom/cbs/app/view/ThumbNailView;)V

    .line 969
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->c(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 970
    iget-object v1, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    .line 975
    :goto_0
    new-instance v1, Lcom/cbs/app/widget/ScheduleGridLayout$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/cbs/app/widget/ScheduleGridLayout$7;-><init>(Lcom/cbs/app/widget/ScheduleGridLayout;Lcom/cbs/app/view/model/VideoData;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    iget-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->e:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->d:Z

    if-eqz v1, :cond_2

    .line 996
    const v1, 0x7f0f019d

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 997
    const-string v2, "Latest available clip"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->k:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1001
    iget-object v1, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    :goto_1
    iget-object v1, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    :cond_3
    return-void

    .line 972
    :cond_4
    iget-object v1, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    goto :goto_0

    .line 1003
    :cond_5
    iget-object v1, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    const-string v2, "Not Available"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setClipVideos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->K:Ljava/util/ArrayList;

    .line 1113
    return-void
.end method

.method public setGridImageParams()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const-wide v6, 0x4061200000000000L    # 137.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 479
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    .line 482
    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    .line 483
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iput v8, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 484
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iput v8, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 485
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 486
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 487
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 488
    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    .line 492
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->B:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_1

    .line 498
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    const-wide v2, 0x4066e00000000000L    # 183.0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 499
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    const-wide v2, 0x4067200000000000L    # 185.0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 517
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gridImageParams.width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gridImageParams.height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    return-void

    .line 502
    :cond_1
    iget v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->B:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_2

    .line 505
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 506
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 513
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->H:Landroid/widget/GridLayout$LayoutParams;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->z:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 469
    iput p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->B:I

    .line 470
    invoke-virtual {p0}, Lcom/cbs/app/widget/ScheduleGridLayout;->setGridImageParams()V

    .line 471
    return-void
.end method

.method public setViewHandle(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout;->F:Landroid/view/View;

    .line 475
    return-void
.end method
