.class public Lcom/cbs/app/adapter/HomeVideoTabletAdapter;
.super Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private e:Landroid/content/Context;

.field private f:[Lcom/cbs/app/view/model/VideoData;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/cbs/app/view/model/VideoData;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 v0, 0xf0

    iput v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->g:I

    .line 23
    iput-object p1, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->e:Landroid/content/Context;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    iput-object p2, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->f:[Lcom/cbs/app/view/model/VideoData;

    .line 27
    :cond_0
    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->a(F)V

    .line 28
    invoke-direct {p0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v1

    .line 73
    const/4 v0, 0x3

    .line 74
    iget-object v2, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const/4 v0, 0x4

    .line 77
    :cond_1
    div-int v0, v1, v0

    iput v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->g:I

    .line 78
    iget v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->h:I

    .line 81
    :cond_2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    .line 45
    if-nez p2, :cond_2

    .line 46
    invoke-direct {p0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->a()V

    .line 47
    new-instance v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->e:Landroid/content/Context;

    iget v2, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->g:I

    iget v3, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->h:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;-><init>(Landroid/content/Context;IIZ)V

    :goto_0
    move-object v0, v1

    .line 49
    check-cast v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 1054
    iget-object v2, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->f:[Lcom/cbs/app/view/model/VideoData;

    aget-object v2, v2, p1

    .line 1055
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1056
    iget-object v3, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v3, v3, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    .line 1058
    if-eqz v3, :cond_0

    .line 1059
    iget v4, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->g:I

    invoke-static {v3, v4}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1060
    iget-object v4, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->e:Landroid/content/Context;

    iget-object v5, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v4, v5, v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/ThumbNailView;Lcom/cbs/app/view/model/VideoData;)V

    .line 1061
    iget-object v4, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v3, v4}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Lcom/cbs/app/view/ThumbNailView;)V

    .line 1063
    :cond_0
    iget-object v3, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v3, v3, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v3, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v3, v3, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    return-object v1

    :cond_2
    move-object v1, p2

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    .line 2034
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->f:[Lcom/cbs/app/view/model/VideoData;

    aget-object v0, v0, p1

    .line 13
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->f:[Lcom/cbs/app/view/model/VideoData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->f:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 90
    return p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/cbs/app/adapter/HomeVideoTabletAdapter;->getCount()I

    move-result v0

    .line 96
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
