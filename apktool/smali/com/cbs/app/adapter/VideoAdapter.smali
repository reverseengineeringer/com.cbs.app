.class public Lcom/cbs/app/adapter/VideoAdapter;
.super Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private e:[Lcom/cbs/app/view/model/VideoData;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lcom/cbs/app/view/model/Show;

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;[Lcom/cbs/app/view/model/VideoData;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->f:Z

    .line 33
    iput-boolean v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->g:Z

    .line 34
    iput v1, p0, Lcom/cbs/app/adapter/VideoAdapter;->h:I

    .line 35
    iput v1, p0, Lcom/cbs/app/adapter/VideoAdapter;->i:I

    .line 37
    iput-boolean v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->k:Z

    .line 43
    iput-object p1, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/cbs/app/adapter/VideoAdapter;->e:[Lcom/cbs/app/view/model/VideoData;

    .line 45
    iput-object p2, p0, Lcom/cbs/app/adapter/VideoAdapter;->j:Lcom/cbs/app/view/model/Show;

    .line 46
    const v0, 0x3eb851ec    # 0.36f

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/VideoAdapter;->a(F)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/adapter/VideoAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a(ILandroid/view/View;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x21

    const/16 v8, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 73
    if-nez p2, :cond_9

    .line 74
    new-instance p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    iget-object v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    iget v3, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    iget v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    invoke-direct {p2, v2, v3, v4, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;-><init>(Landroid/content/Context;IIZ)V

    .line 2057
    :goto_0
    iget-object v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->e:[Lcom/cbs/app/view/model/VideoData;

    aget-object v3, v2, p1

    .line 1147
    if-eqz v3, :cond_8

    .line 1148
    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    if-eqz v2, :cond_0

    .line 1150
    iget v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    invoke-static {v2, v4}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1151
    iget-object v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    iget-object v5, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v4, v5, v3}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/ThumbNailView;Lcom/cbs/app/view/model/VideoData;)V

    .line 1152
    iget-object v4, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-static {v2, v4}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Lcom/cbs/app/view/ThumbNailView;)V

    .line 1155
    :cond_0
    iget-boolean v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->g:Z

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    iput p1, p0, Lcom/cbs/app/adapter/VideoAdapter;->i:I

    .line 1157
    iput-boolean v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->g:Z

    .line 1159
    :cond_1
    iget-boolean v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->f:Z

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1160
    iput p1, p0, Lcom/cbs/app/adapter/VideoAdapter;->h:I

    .line 1161
    iput-boolean v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->f:Z

    .line 1166
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->j:Lcom/cbs/app/view/model/Show;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->j:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->j:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Classics"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1170
    :goto_1
    const-string v2, ""

    .line 1171
    iget-boolean v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->k:Z

    if-eqz v4, :cond_4

    .line 1172
    iget v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->i:I

    if-ne p1, v4, :cond_4

    if-nez v0, :cond_4

    .line 1174
    iget-object v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1175
    :cond_3
    const-string v2, "Latest "

    .line 1181
    :cond_4
    :goto_2
    iget v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->h:I

    if-ne p1, v4, :cond_6

    if-nez v0, :cond_6

    .line 1183
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1184
    :cond_5
    const-string v2, "Latest "

    .line 1189
    :cond_6
    :goto_3
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    const v5, 0x7f0b00d8

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1191
    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1194
    if-lez v4, :cond_c

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1197
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2, v5, v1, v4, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1199
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v5, v4, v0, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1201
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    :goto_4
    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1206
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v0, v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->c:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    :cond_7
    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    iget-object v2, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v2, v2, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1214
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1215
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1216
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1217
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/cbs/app/adapter/VideoAdapter$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/adapter/VideoAdapter$1;-><init>(Lcom/cbs/app/adapter/VideoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_8
    :goto_5
    return-object p2

    .line 76
    :cond_9
    check-cast p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 77
    iget-object v2, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cbs/app/view/ThumbNailView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1177
    :cond_a
    const-string v2, "Latest Episode "

    goto/16 :goto_2

    .line 1186
    :cond_b
    const-string v2, "Latest Clip "

    goto/16 :goto_3

    .line 1203
    :cond_c
    iget-object v2, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v2, v2, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1245
    :cond_d
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1246
    iget-object v0, p2, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method

.method protected final a(II)Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    iput p2, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    .line 96
    iget v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/adapter/VideoAdapter;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    move v1, v2

    .line 97
    :goto_0
    iget v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->c:I

    if-ge v1, v0, :cond_1

    .line 98
    iget v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->c:I

    mul-int/2addr v0, p1

    add-int v4, v0, v1

    .line 101
    invoke-virtual {p0}, Lcom/cbs/app/adapter/VideoAdapter;->getItemCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/cbs/app/adapter/VideoAdapter;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 103
    invoke-virtual {v0, v2}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setVisibility(I)V

    .line 104
    iget v5, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    iget v6, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    invoke-virtual {v0, v5, v6}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setWidthAndHeight(II)V

    .line 105
    new-instance v5, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;

    invoke-direct {v5, p0, v4}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;-><init>(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;I)V

    invoke-virtual {v0, v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    iget-object v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    iget v5, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    iget v6, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    const/4 v7, 0x1

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;-><init>(Landroid/content/Context;IIZ)V

    .line 108
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 115
    :cond_1
    return-object v3
.end method

.method public final a(I)Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->e:[Lcom/cbs/app/view/model/VideoData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final a(ILandroid/widget/LinearLayout;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 119
    iput p3, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    .line 120
    iget v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/adapter/VideoAdapter;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    move v1, v2

    .line 121
    :goto_0
    iget v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->c:I

    if-ge v1, v0, :cond_2

    .line 122
    iget v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->c:I

    mul-int/2addr v0, p1

    add-int v3, v0, v1

    .line 123
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    iget-object v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->a:Landroid/content/Context;

    iget v5, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    iget v6, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    const/4 v7, 0x1

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;-><init>(Landroid/content/Context;IIZ)V

    .line 128
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    :goto_1
    invoke-virtual {p0}, Lcom/cbs/app/adapter/VideoAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 133
    invoke-virtual {v0, v2}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setVisibility(I)V

    .line 135
    invoke-virtual {p0, v3, v0}, Lcom/cbs/app/adapter/VideoAdapter;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;

    .line 136
    iget v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    iget v5, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    invoke-virtual {v0, v4, v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setWidthAndHeight(II)V

    .line 137
    new-instance v4, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;

    invoke-direct {v4, p0, v3}, Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter$ListItemClickListener;-><init>(Lcom/cbs/app/widget/GridViewWithHeaderBaseAdapter;I)V

    invoke-virtual {v0, v4}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_0
    iget v4, p0, Lcom/cbs/app/adapter/VideoAdapter;->l:I

    iget v5, p0, Lcom/cbs/app/adapter/VideoAdapter;->m:I

    invoke-virtual {v0, v4, v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setWidthAndHeight(II)V

    goto :goto_1

    .line 139
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 142
    :cond_2
    return-void
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    .line 3057
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->e:[Lcom/cbs/app/view/model/VideoData;

    aget-object v0, v0, p1

    .line 28
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->e:[Lcom/cbs/app/view/model/VideoData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoAdapter;->e:[Lcom/cbs/app/view/model/VideoData;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setIsLatestAvailableSelected(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/cbs/app/adapter/VideoAdapter;->k:Z

    .line 87
    return-void
.end method

.method public setVideos([Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cbs/app/adapter/VideoAdapter;->e:[Lcom/cbs/app/view/model/VideoData;

    .line 51
    invoke-virtual {p0}, Lcom/cbs/app/adapter/VideoAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method
