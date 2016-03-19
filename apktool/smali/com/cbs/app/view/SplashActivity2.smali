.class public Lcom/cbs/app/view/SplashActivity2;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/SplashActivity2$a;,
        Lcom/cbs/app/view/SplashActivity2$d;,
        Lcom/cbs/app/view/SplashActivity2$c;,
        Lcom/cbs/app/view/SplashActivity2$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field e:Landroid/content/DialogInterface$OnClickListener;

.field f:Lcom/cbs/app/androiddata/ResponseModelListener;

.field g:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

.field h:Lcom/cbs/app/androiddata/ResponseModelListener;

.field i:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

.field j:Landroid/content/DialogInterface$OnClickListener;

.field private m:[Lcom/cbs/app/view/model/Episode;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation
.end field

.field private o:[Lcom/cbs/app/view/model/DeviceHome;

.field private p:Lcom/cbs/app/manager/AuthStatusManager;

.field private q:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

.field private r:Lcom/cbs/app/view/model/registration/UserStatus;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/d/a/b/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/SplashActivity2;->k:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/cbs/app/analytics/Action;->b:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v0}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/SplashActivity2;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->a:Z

    .line 91
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->b:Z

    .line 95
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->c:Z

    .line 99
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->d:Z

    .line 100
    new-instance v0, Lcom/cbs/app/view/SplashActivity2$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SplashActivity2$1;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    iput-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->m:[Lcom/cbs/app/view/model/Episode;

    .line 111
    iput-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    .line 112
    iput-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->o:[Lcom/cbs/app/view/model/DeviceHome;

    .line 117
    iput-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->p:Lcom/cbs/app/manager/AuthStatusManager;

    .line 118
    iput-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->q:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 119
    iput-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->r:Lcom/cbs/app/view/model/registration/UserStatus;

    .line 120
    const-string v0, "ANONYMOUS"

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->s:Ljava/lang/String;

    .line 124
    iput v1, p0, Lcom/cbs/app/view/SplashActivity2;->t:I

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    .line 132
    iput-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->v:Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    .line 136
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->w:Z

    .line 140
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->x:Z

    .line 144
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    .line 145
    new-instance v0, Lcom/cbs/app/view/SplashActivity2$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SplashActivity2$4;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->f:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 186
    new-instance v0, Lcom/cbs/app/view/SplashActivity2$5;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SplashActivity2$5;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->g:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    .line 221
    new-instance v0, Lcom/cbs/app/view/SplashActivity2$6;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SplashActivity2$6;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->z:Lcom/d/a/b/f/c;

    .line 250
    new-instance v0, Lcom/cbs/app/view/SplashActivity2$7;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SplashActivity2$7;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 281
    new-instance v0, Lcom/cbs/app/view/SplashActivity2$8;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SplashActivity2$8;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->i:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    .line 306
    new-instance v0, Lcom/cbs/app/view/SplashActivity2$9;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SplashActivity2$9;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->A:Z

    .line 329
    iput-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->B:Z

    .line 1184
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/SplashActivity2;Lcom/cbs/app/view/model/rest/TonightEndpointResponse;)Lcom/cbs/app/view/model/rest/TonightEndpointResponse;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2;->v:Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/SplashActivity2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/SplashActivity2;I)V
    .locals 11

    .prologue
    .line 79
    .line 3752
    iget v0, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    if-ge p1, v0, :cond_a

    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-nez v0, :cond_a

    .line 3756
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    if-eqz v0, :cond_9

    .line 3757
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->v:Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;->getTonightResponse()Lcom/cbs/app/view/model/rest/TonightResponse;

    move-result-object v2

    .line 3758
    if-eqz v2, :cond_9

    .line 3761
    const-wide v0, 0x4062c00000000000L    # 150.0

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    .line 3762
    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    .line 3763
    div-int/lit8 v0, v0, 0x2

    .line 3764
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3765
    div-int/lit8 v0, v1, 0x2

    .line 3767
    :cond_0
    int-to-double v0, v0

    const-wide v4, 0x3ffc3b13b13b13b1L    # 1.7644230769230769

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 3768
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v0

    .line 3769
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;)I

    move-result v3

    .line 3771
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3772
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3777
    :cond_1
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    .line 3778
    iget v4, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    div-int/2addr v0, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v0, v3

    .line 3779
    if-le v0, v1, :cond_b

    move v4, v1

    .line 3782
    :goto_0
    int-to-double v0, v4

    const-wide v6, 0x3fe222e09c402ca5L    # 0.5667574931880109

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v6, v0

    .line 3783
    invoke-static {p0, v4}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v7

    .line 3784
    invoke-virtual {v2}, Lcom/cbs/app/view/model/rest/TonightResponse;->getTonightEpisodes()Ljava/util/ArrayList;

    move-result-object v0

    .line 3785
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 3786
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Episode;

    .line 3787
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3788
    const v2, 0x7f030113

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3789
    if-eqz v1, :cond_9

    .line 3791
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3792
    const v2, 0x7f0f03cc

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3793
    if-eqz v2, :cond_2

    .line 3794
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3795
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3797
    :cond_2
    const v2, 0x7f0f03cd

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3798
    if-eqz v3, :cond_4

    instance-of v2, v3, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    move-object v2, v3

    .line 3799
    check-cast v2, Landroid/widget/ImageView;

    .line 3801
    packed-switch p1, :pswitch_data_0

    .line 3812
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3813
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3814
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getFilepath_ipad()Ljava/lang/String;

    move-result-object v5

    .line 3815
    if-eqz v5, :cond_3

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3816
    int-to-double v8, v7

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v8, v9, v7}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v5

    .line 3818
    :cond_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3819
    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3820
    invoke-static {}, Lcom/d/a/b/d;->a()Lcom/d/a/b/d;

    move-result-object v8

    .line 3821
    new-instance v9, Lcom/d/a/b/c$a;

    invoke-direct {v9}, Lcom/d/a/b/c$a;-><init>()V

    invoke-virtual {v9}, Lcom/d/a/b/c$a;->a()Lcom/d/a/b/c$a;

    move-result-object v9

    const v10, 0x7f0201e6

    invoke-virtual {v9, v10}, Lcom/d/a/b/c$a;->b(I)Lcom/d/a/b/c$a;

    move-result-object v9

    const v10, 0x7f0201e6

    invoke-virtual {v9, v10}, Lcom/d/a/b/c$a;->c(I)Lcom/d/a/b/c$a;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/d/a/b/c$a;->a(Z)Lcom/d/a/b/c$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/d/a/b/c$a;->b()Lcom/d/a/b/c$a;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/d/a/b/c$a;->a(Landroid/graphics/BitmapFactory$Options;)Lcom/d/a/b/c$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/d/a/b/c$a;->d()Lcom/d/a/b/c;

    move-result-object v7

    .line 3826
    new-instance v9, Lcom/cbs/app/view/SplashActivity2$b;

    invoke-direct {v9}, Lcom/cbs/app/view/SplashActivity2$b;-><init>()V

    invoke-virtual {v8, v5, v2, v7, v9}, Lcom/d/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/c;Lcom/d/a/b/f/a;)V

    .line 3828
    :cond_4
    const v2, 0x7f0f03ce

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3829
    if-eqz v2, :cond_7

    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 3830
    check-cast v2, Landroid/widget/TextView;

    .line 3831
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    invoke-static {p0, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v7

    invoke-direct {v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3832
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3833
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v5

    .line 3834
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_5

    .line 3835
    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3836
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "..."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3838
    :cond_5
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getDisplay_airdate()Ljava/lang/String;

    move-result-object v7

    .line 3923
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "<strong>"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "</strong>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3925
    iget-boolean v8, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    if-eqz v8, :cond_6

    .line 3926
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3927
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "<strong>"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</strong><br/>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3839
    :cond_6
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3842
    :cond_7
    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3843
    if-eqz v0, :cond_8

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    .line 3844
    check-cast v0, Landroid/widget/LinearLayout;

    .line 3845
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v5, v6, 0x2

    add-int/2addr v5, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    invoke-static {p0, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3847
    const/16 v4, 0x33

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3848
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3849
    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3850
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3851
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4865
    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cbs/app/view/SplashActivity2$11;

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/cbs/app/view/SplashActivity2$11;-><init>(Lcom/cbs/app/view/SplashActivity2;ILandroid/view/View;Landroid/view/View;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3858
    :cond_9
    :goto_2
    return-void

    .line 3803
    :pswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0014

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setId(I)V

    goto/16 :goto_1

    .line 3806
    :pswitch_1
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0015

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setId(I)V

    goto/16 :goto_1

    .line 3859
    :cond_a
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getHomeData()V

    goto :goto_2

    :cond_b
    move v4, v0

    goto/16 :goto_0

    .line 3801
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1064
    new-instance v1, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 1065
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1068
    invoke-virtual {v1, p0, v0, p1}, Lcom/cbs/app/service/AdServiceImpl;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 1069
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/SplashActivity2;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    return v0
.end method

.method static synthetic a(Lcom/cbs/app/view/SplashActivity2;[Lcom/cbs/app/view/model/DeviceHome;)[Lcom/cbs/app/view/model/DeviceHome;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2;->o:[Lcom/cbs/app/view/model/DeviceHome;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/SplashActivity2;[Lcom/cbs/app/view/model/Episode;)[Lcom/cbs/app/view/model/Episode;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2;->m:[Lcom/cbs/app/view/model/Episode;

    return-object p1
.end method

.method static synthetic b(Lcom/cbs/app/view/SplashActivity2;)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->x:Z

    return v0
.end method

.method static synthetic c(Lcom/cbs/app/view/SplashActivity2;)I
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/cbs/app/view/SplashActivity2;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cbs/app/view/SplashActivity2;->t:I

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 473
    .line 1567
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cbs/app/view/SplashActivity2$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cbs/app/view/SplashActivity2$c;-><init>(Lcom/cbs/app/view/SplashActivity2;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 474
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->g:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-static {p0, v0}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/content/Context;Lcom/cbs/app/manager/StatusManager$StatusResponseListener;)V

    .line 475
    return-void
.end method

.method static synthetic d(Lcom/cbs/app/view/SplashActivity2;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/cbs/app/view/SplashActivity2;->t:I

    return v0
.end method

.method static synthetic e(Lcom/cbs/app/view/SplashActivity2;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    return v0
.end method

.method static synthetic f(Lcom/cbs/app/view/SplashActivity2;)V
    .locals 2

    .prologue
    .line 1709
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cbs/app/view/SplashActivity2$10;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SplashActivity2$10;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method static synthetic g(Lcom/cbs/app/view/SplashActivity2;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 79
    .line 2621
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    if-eqz v0, :cond_7

    .line 2622
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2623
    iput v9, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    .line 2625
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getSplashRootView()Landroid/view/View;

    move-result-object v3

    .line 2626
    if-eqz v3, :cond_1

    .line 2627
    const v0, 0x7f0f00ab

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2628
    if-eqz v0, :cond_1

    .line 2629
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2632
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->v:Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    if-eqz v0, :cond_7

    .line 2634
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->v:Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;->getTonightResponse()Lcom/cbs/app/view/model/rest/TonightResponse;

    move-result-object v0

    .line 2635
    if-eqz v0, :cond_7

    .line 2636
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/TonightResponse;->getTonightEpisodes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    .line 2637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " tonight "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2638
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2639
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    if-ge v0, v1, :cond_2

    .line 2640
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    .line 2644
    :cond_2
    const-wide v0, 0x4062c00000000000L    # 150.0

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    .line 2645
    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    .line 2646
    div-int/lit8 v0, v0, 0x2

    .line 2647
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2648
    div-int/lit8 v0, v1, 0x2

    .line 2650
    :cond_3
    int-to-float v0, v0

    const v1, 0x3fe1d89e

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2651
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v0

    .line 2652
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;)I

    move-result v4

    .line 2654
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2655
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2659
    :cond_4
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    .line 2660
    iget v5, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    div-int/2addr v0, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v0, v4

    .line 2661
    if-le v0, v1, :cond_9

    .line 2664
    :goto_0
    int-to-float v0, v1

    const v4, 0x3f111705

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2665
    invoke-static {p0, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v5

    .line 2667
    if-eqz v3, :cond_6

    .line 2668
    const v0, 0x7f0f00ac

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2669
    if-eqz v0, :cond_5

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    .line 2670
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2671
    iget v3, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v1, v3

    .line 2672
    div-int/lit8 v3, v4, 0x2

    add-int/2addr v3, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    invoke-static {p0, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    add-int/2addr v3, v4

    .line 2673
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2674
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2676
    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-static {p0, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v4, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2677
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2678
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2679
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    move v1, v2

    .line 2682
    :goto_1
    iget v0, p0, Lcom/cbs/app/view/SplashActivity2;->u:I

    if-ge v1, v0, :cond_6

    .line 2683
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Episode;

    .line 2684
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getFilepath_ipad()Ljava/lang/String;

    move-result-object v0

    .line 2685
    int-to-double v2, v5

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    .line 2686
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2687
    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2688
    invoke-static {}, Lcom/d/a/b/d;->a()Lcom/d/a/b/d;

    move-result-object v2

    .line 2689
    iget-object v3, p0, Lcom/cbs/app/view/SplashActivity2;->z:Lcom/d/a/b/f/c;

    .line 3380
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/d/a/b/d;->b(Ljava/lang/String;Lcom/d/a/b/c;Lcom/d/a/b/f/a;)V

    .line 2682
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2692
    :cond_6
    sget-object v0, Lcom/cbs/app/view/SplashActivity2;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->a(Ljava/lang/String;)V

    .line 2693
    :cond_7
    :goto_2
    return-void

    .line 2696
    :cond_8
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getHomeData()V

    .line 2697
    sget-object v0, Lcom/cbs/app/view/SplashActivity2;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move v1, v0

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/cbs/app/view/SplashActivity2;)Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->q:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    return-object v0
.end method

.method static synthetic i(Lcom/cbs/app/view/SplashActivity2;)Lcom/cbs/app/view/model/registration/UserStatus;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->r:Lcom/cbs/app/view/model/registration/UserStatus;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/view/SplashActivity2;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->x:Z

    return v0
.end method

.method static synthetic k(Lcom/cbs/app/view/SplashActivity2;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->w:Z

    return v0
.end method

.method static synthetic l(Lcom/cbs/app/view/SplashActivity2;)[Lcom/cbs/app/view/model/DeviceHome;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->o:[Lcom/cbs/app/view/model/DeviceHome;

    return-object v0
.end method

.method static synthetic m(Lcom/cbs/app/view/SplashActivity2;)[Lcom/cbs/app/view/model/Episode;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->m:[Lcom/cbs/app/view/model/Episode;

    return-object v0
.end method

.method static synthetic n(Lcom/cbs/app/view/SplashActivity2;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/cbs/app/view/SplashActivity2;)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->w:Z

    return v0
.end method

.method static synthetic p(Lcom/cbs/app/view/SplashActivity2;)Lcom/cbs/app/view/model/rest/TonightEndpointResponse;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->v:Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 482
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->q:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 483
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->q:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->q:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->r:Lcom/cbs/app/view/model/registration/UserStatus;

    .line 485
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->r:Lcom/cbs/app/view/model/registration/UserStatus;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->r:Lcom/cbs/app/view/model/registration/UserStatus;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->s:Ljava/lang/String;

    .line 489
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoToHome : homeReturned:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 938
    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x190

    .line 939
    :goto_0
    iget-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    if-eqz v1, :cond_0

    .line 940
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cbs/app/view/SplashActivity2$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/SplashActivity2$2;-><init>(Lcom/cbs/app/view/SplashActivity2;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    :cond_0
    return-void

    .line 938
    :cond_1
    const/16 v0, 0x258

    goto :goto_0
.end method

.method public getHomeData()V
    .locals 3

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHomeData : homeReturned:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1010
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    if-eqz v0, :cond_0

    .line 1011
    new-instance v0, Lcom/cbs/app/service/HomeServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/HomeServiceImpl;-><init>()V

    .line 1012
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2;->f:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, p0, v1, v2}, Lcom/cbs/app/service/HomeService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1014
    :cond_0
    return-void
.end method

.method public getSplashRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 576
    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTonightData()V
    .locals 2

    .prologue
    .line 1055
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/SplashActivity2;->t:I

    .line 1056
    new-instance v0, Lcom/cbs/app/service/TonightServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/TonightServiceImpl;-><init>()V

    .line 1057
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, p0, v1}, Lcom/cbs/app/service/TonightService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 1058
    return-void
.end method

.method public getUserStatus()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->p:Lcom/cbs/app/manager/AuthStatusManager;

    invoke-virtual {v0}, Lcom/cbs/app/manager/AuthStatusManager;->h()V

    .line 479
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->finish()V

    .line 336
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 347
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->setContentView(I)V

    .line 350
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isdeeplink"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 351
    sput-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v0, :cond_0

    .line 352
    const v0, 0x7f0f00aa

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_0
    invoke-static {p0}, Lcom/cbs/app/view/utils/Preferences;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    .line 357
    :cond_1
    iput-boolean v2, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    .line 358
    invoke-static {p0}, Lcom/cbs/app/service/AuthServiceImpl;->c(Landroid/content/Context;)V

    .line 360
    new-instance v0, Lcom/cbs/app/manager/AuthStatusManager;

    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2;->i:Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/manager/AuthStatusManager;-><init>(Landroid/app/Activity;Lcom/cbs/app/manager/AuthStatusManager$AuthStatusResponseListener;)V

    iput-object v0, p0, Lcom/cbs/app/view/SplashActivity2;->p:Lcom/cbs/app/manager/AuthStatusManager;

    .line 363
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1495
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_0
    invoke-direct {p0}, Lcom/cbs/app/view/SplashActivity2;->c()V

    .line 372
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getEverything()V

    .line 376
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->B:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_1
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->B:Z

    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p0}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 384
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 389
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 395
    :cond_2
    return-void

    .line 1500
    :pswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1501
    if-eq v0, v2, :cond_3

    if-ne v0, v4, :cond_4

    .line 1502
    :cond_3
    invoke-virtual {p0, v6}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1504
    :cond_4
    invoke-virtual {p0, v2}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1509
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1522
    :cond_5
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1523
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1528
    :pswitch_2
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1529
    if-eq v0, v2, :cond_6

    if-ne v0, v4, :cond_7

    .line 1530
    :cond_6
    invoke-virtual {p0, v6}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1532
    :cond_7
    invoke-virtual {p0, v2}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1541
    :pswitch_3
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1542
    if-eqz v0, :cond_8

    if-ne v0, v2, :cond_9

    .line 1543
    :cond_8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1546
    invoke-virtual {p0, v3}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1549
    :cond_9
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1550
    invoke-virtual {p0, v3}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1552
    :cond_a
    invoke-virtual {p0, v5}, Lcom/cbs/app/view/SplashActivity2;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v0

    sget-object v0, Lcom/cbs/app/view/SplashActivity2;->k:Ljava/lang/String;

    const-string v1, "adm not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1523
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 995
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 996
    if-eqz v0, :cond_0

    .line 997
    new-instance v1, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 998
    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->c(Landroid/view/ViewGroup;)V

    .line 1000
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1001
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 400
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isdeeplink"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 401
    sput-boolean v0, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v0, :cond_0

    .line 402
    const v0, 0x7f0f00aa

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 460
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    if-eqz v0, :cond_0

    .line 462
    new-instance v1, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 463
    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->b(Landroid/view/ViewGroup;)V

    .line 465
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    .line 469
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    .line 412
    invoke-virtual {p0}, Lcom/cbs/app/view/SplashActivity2;->getHomeData()V

    .line 413
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 417
    const v0, 0x7f0f00ad

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SplashActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 418
    if-eqz v0, :cond_0

    .line 419
    new-instance v1, Lcom/cbs/app/service/AdServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/AdServiceImpl;-><init>()V

    .line 420
    invoke-static {v0}, Lcom/cbs/app/service/AdServiceImpl;->c(Landroid/view/ViewGroup;)V

    .line 422
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->y:Z

    .line 425
    iget-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->A:Z

    if-nez v0, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/cbs/app/view/SplashActivity2;->c()V

    .line 428
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/SplashActivity2;->A:Z

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    sget-object v1, Lcom/cbs/app/analytics/Action;->b:Lcom/cbs/app/analytics/Action;

    .line 432
    const-string v2, "pageView"

    const-string v3, "anything"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-static {p0, v1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 434
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 445
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    .line 449
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 454
    invoke-static {p0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;)V

    .line 456
    return-void
.end method
