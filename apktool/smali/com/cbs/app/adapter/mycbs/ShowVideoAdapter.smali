.class public Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;,
        Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$VideoDataHolder;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:[Lcom/cbs/app/view/model/ShowVideo;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/cbs/app/view/model/ShowVideo;ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, [Lcom/cbs/app/view/model/ShowVideo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/ShowVideo;

    iput-object v0, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->c:[Lcom/cbs/app/view/model/ShowVideo;

    .line 44
    iput-boolean p3, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->e:Z

    .line 45
    iput-object p4, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->d:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->c:[Lcom/cbs/app/view/model/ShowVideo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->c:[Lcom/cbs/app/view/model/ShowVideo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->c:[Lcom/cbs/app/view/model/ShowVideo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowVideo;->getShowId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 66
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .prologue
    .line 77
    .line 79
    if-nez p2, :cond_14

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 81
    new-instance v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;

    invoke-direct {v8}, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;-><init>()V

    .line 82
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->e:Z

    if-eqz v3, :cond_a

    .line 83
    const v3, 0x7f0300e7

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    .line 84
    iget-object v3, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    .line 85
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    const v4, 0x7f0f033d

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    .line 91
    :goto_0
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    const v4, 0x7f0f033c

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->a:Landroid/widget/TextView;

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v5

    .line 1101
    const/4 v2, 0x3

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1103
    const/4 v2, 0x4

    move v4, v2

    .line 1106
    :goto_1
    div-int v6, v5, v4

    .line 1107
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1108
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1110
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->c:[Lcom/cbs/app/view/model/ShowVideo;

    aget-object v7, v2, p1

    .line 1111
    invoke-virtual {v7}, Lcom/cbs/app/view/model/ShowVideo;->getShowId()Ljava/lang/Integer;

    move-result-object v2

    .line 1113
    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    .line 1114
    if-eqz v2, :cond_1

    .line 1115
    iget-object v9, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->a:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    :cond_1
    invoke-virtual {v7}, Lcom/cbs/app/view/model/ShowVideo;->getVideoList()Ljava/util/List;

    move-result-object v2

    .line 1119
    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 1122
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1124
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->e:Z

    if-nez v2, :cond_2

    .line 1125
    invoke-virtual {v7}, Lcom/cbs/app/view/model/ShowVideo;->getVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1127
    const/4 v2, 0x1

    .line 1128
    if-le v5, v4, :cond_12

    .line 1129
    int-to-float v2, v5

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 1130
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v5, v2

    .line 1132
    :goto_2
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    check-cast v2, Landroid/support/v7/widget/GridLayout;

    .line 1133
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 1134
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    move v5, v6

    .line 1138
    :cond_2
    invoke-virtual {v7}, Lcom/cbs/app/view/model/ShowVideo;->getVideoList()Ljava/util/List;

    move-result-object v9

    .line 1139
    const/4 v2, 0x0

    .line 1140
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v2

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cbs/app/view/model/VideoData;

    .line 1191
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->e:Z

    if-eqz v6, :cond_b

    const v6, 0x3eb33333    # 0.35f

    :goto_4
    int-to-float v11, v5

    mul-float/2addr v6, v11

    float-to-int v6, v6

    .line 1192
    new-instance v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->e:Z

    invoke-direct {v11, v12, v5, v6, v13}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;-><init>(Landroid/content/Context;IIZ)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v6}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    new-instance v6, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$VideoDataHolder;

    invoke-direct {v6}, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$VideoDataHolder;-><init>()V

    .line 1196
    move/from16 v0, p1

    iput v0, v6, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$VideoDataHolder;->a:I

    .line 1197
    iput-object v2, v6, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$VideoDataHolder;->b:Lcom/cbs/app/view/model/VideoData;

    .line 1198
    invoke-virtual {v11, v6}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1199
    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 1201
    const/16 v12, 0xf

    if-le v6, v12, :cond_3

    .line 1202
    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v6, v6, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    const v13, 0x7f0b00d8

    invoke-virtual {v6, v12, v13}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1204
    :cond_3
    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v6, v6, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v6, v6, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1209
    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v6, v6, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    :cond_4
    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v6, v6, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->e:Z

    if-eqz v6, :cond_5

    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 1214
    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1215
    iget-object v6, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    new-instance v12, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$1;-><init>(Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;)V

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    :cond_5
    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v12

    .line 1247
    if-eqz v12, :cond_6

    .line 1248
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->e:Z

    if-eqz v6, :cond_c

    div-int/lit8 v6, v5, 0x3

    .line 1249
    :goto_5
    invoke-static {v12, v6}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    iget-object v13, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v12, v13, v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/ThumbNailView;Lcom/cbs/app/view/model/VideoData;)V

    .line 1251
    iget-object v2, v11, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v6, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Lcom/cbs/app/view/ThumbNailView;)V

    .line 1142
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1143
    :cond_7
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1144
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v7, v2, :cond_8

    .line 1145
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v11

    invoke-direct {v2, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    invoke-static {v6, v12, v13}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    const-wide/high16 v14, 0x4028000000000000L    # 12.0

    invoke-static {v12, v14, v15}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1148
    new-instance v6, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-direct {v6, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0026

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1150
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1157
    :cond_8
    :goto_6
    add-int/lit8 v2, v7, 0x1

    .line 1159
    if-lt v2, v4, :cond_11

    .line 93
    :cond_9
    :goto_7
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_8
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    return-object v3

    .line 87
    :cond_a
    const v3, 0x7f0300e8

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    .line 88
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    const v3, 0x7f0f033f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayout;

    iput-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    .line 89
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->b:Landroid/widget/LinearLayout;

    move-object v3, v2

    goto/16 :goto_0

    .line 1191
    :cond_b
    const v6, 0x3f666666    # 0.9f

    goto/16 :goto_4

    :cond_c
    move v6, v5

    .line 1248
    goto/16 :goto_5

    .line 1155
    :cond_d
    iget-object v2, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1164
    :cond_e
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1165
    const-string v4, "There are currently no videos  for this show."

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1168
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 1169
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1170
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1172
    iget-object v4, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 1175
    :cond_10
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 1179
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1180
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1182
    iget-object v5, v8, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter$ShowVideoViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    :cond_11
    move v7, v2

    goto/16 :goto_3

    :cond_12
    move v5, v2

    goto/16 :goto_2

    :cond_13
    move v4, v2

    goto/16 :goto_1

    :cond_14
    move-object/from16 v3, p2

    goto/16 :goto_8
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/cbs/app/adapter/mycbs/ShowVideoAdapter;->getCount()I

    move-result v0

    .line 72
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
