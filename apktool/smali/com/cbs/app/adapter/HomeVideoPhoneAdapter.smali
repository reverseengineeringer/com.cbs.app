.class public Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:[Lcom/cbs/app/view/model/VideoData;

.field private d:Lcom/cbs/app/view/utils/ImageLoaderLRU;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/cbs/app/view/model/VideoData;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->c:[Lcom/cbs/app/view/model/VideoData;

    .line 28
    new-instance v0, Lcom/cbs/app/view/utils/ImageLoaderLRU;

    invoke-direct {v0}, Lcom/cbs/app/view/utils/ImageLoaderLRU;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->d:Lcom/cbs/app/view/utils/ImageLoaderLRU;

    .line 29
    iput-object p1, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->b:Landroid/content/Context;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p2}, [Lcom/cbs/app/view/model/VideoData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->c:[Lcom/cbs/app/view/model/VideoData;

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->c:[Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->c:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .line 2123
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->c:[Lcom/cbs/app/view/model/VideoData;

    aget-object v0, v0, p1

    .line 17
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 44
    if-nez p2, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->e:I

    .line 1117
    iget v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->e:I

    int-to-float v0, v0

    const v1, 0x3eb851ec    # 0.36f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->f:I

    .line 46
    new-instance p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->b:Landroid/content/Context;

    iget v1, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->e:I

    iget v2, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->f:I

    const/4 v3, 0x1

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;-><init>(Landroid/content/Context;IIZ)V

    .line 2058
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->c:[Lcom/cbs/app/view/model/VideoData;

    aget-object v0, v0, p1

    .line 2059
    if-eqz v0, :cond_1

    .line 2060
    iget-object v1, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2061
    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v1

    .line 2062
    if-eqz v1, :cond_0

    .line 2063
    iget v2, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->e:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2064
    iget-object v2, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->b:Landroid/content/Context;

    iget-object v3, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v2, v3, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/ThumbNailView;Lcom/cbs/app/view/model/VideoData;)V

    .line 2065
    iget-object v2, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->d:Lcom/cbs/app/view/utils/ImageLoaderLRU;

    iget-object v3, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    iget v4, p0, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;->e:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a(Lcom/cbs/app/view/ThumbNailView;Ljava/lang/String;I)V

    .line 2070
    :cond_0
    iget-object v1, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    iget-object v1, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2072
    iget-object v1, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v1, v1, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    iget-object v1, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 2076
    iget-object v1, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2077
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/adapter/HomeVideoPhoneAdapter$1;-><init>(Lcom/cbs/app/adapter/HomeVideoPhoneAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_1
    return-object p2

    .line 48
    :cond_2
    check-cast p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 49
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/ThumbNailView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
