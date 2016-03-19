.class public Lcom/cbs/app/adapter/mycbs/MyShowAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/fragments/show/model/ShowItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/cbs/app/view/model/FavoriteShowList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZILcom/cbs/app/view/model/FavoriteShowList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/fragments/show/model/ShowItem;",
            ">;ZI",
            "Lcom/cbs/app/view/model/FavoriteShowList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->d:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "constructor list size is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    iput-object p1, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->f:Ljava/util/List;

    .line 50
    iput p4, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->c:I

    .line 51
    iput-boolean p3, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->d:Z

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->b:Landroid/view/LayoutInflater;

    .line 53
    iput-object p5, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->g:Lcom/cbs/app/view/model/FavoriteShowList;

    .line 54
    return-void
.end method

.method private a(ILcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 95
    const/4 v1, 0x0

    .line 96
    iget-object v3, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->g:Lcom/cbs/app/view/model/FavoriteShowList;

    if-eqz v3, :cond_0

    .line 97
    iget-object v1, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->g:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    :cond_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 101
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/FavoriteShow;

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "comparing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v4, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v1}, Lcom/cbs/app/view/model/FavoriteShow;->getCbsShowId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 106
    const/4 v0, 0x1

    .line 111
    :goto_0
    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p2, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p2, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_2
    :goto_1
    return-void

    .line 117
    :cond_3
    iget-object v0, p2, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p2, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    const v1, 0x7f0201e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    .line 2064
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 23
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 192
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const v9, 0x7f0d0027

    const/4 v1, 0x4

    const/4 v8, 0x0

    .line 76
    if-nez p2, :cond_6

    .line 77
    new-instance v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;

    invoke-direct {v4}, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->b:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->c:I

    invoke-virtual {v0, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    const v0, 0x7f0f0198

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->a:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f0196

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->b:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0f0197

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0f0199

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->d:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1126
    iget-object v0, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 1127
    if-eqz v0, :cond_5

    .line 1128
    iget-object v2, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v2, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->tuneInTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_0
    new-instance v3, Lcom/cbs/app/view/model/FavoriteShow;

    invoke-direct {v3}, Lcom/cbs/app/view/model/FavoriteShow;-><init>()V

    .line 1133
    iget-wide v6, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v3, v6, v7}, Lcom/cbs/app/view/model/FavoriteShow;->setCbsShowId(J)V

    .line 1135
    iget-object v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->g:Lcom/cbs/app/view/model/FavoriteShowList;

    if-eqz v2, :cond_9

    .line 1136
    iget-object v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->g:Lcom/cbs/app/view/model/FavoriteShowList;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/FavoriteShowList;->getShowList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1138
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1139
    iget-object v2, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1140
    iget-boolean v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->d:Z

    if-nez v2, :cond_1

    .line 1141
    iget-object v2, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1149
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    invoke-static {v2, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    .line 1150
    iget-object v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-static {v2, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    .line 1151
    iget-boolean v6, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->d:Z

    if-nez v6, :cond_8

    .line 1152
    iget-object v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v2, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    .line 1153
    iget-object v2, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v6

    .line 1155
    const/4 v2, 0x3

    .line 1156
    iget-object v7, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    invoke-static {v7}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1159
    :goto_2
    int-to-float v2, v6

    int-to-float v6, v1

    div-float/2addr v2, v6

    .line 1160
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1161
    mul-int/2addr v1, v3

    sub-int/2addr v2, v1

    .line 1163
    int-to-float v1, v2

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v3

    .line 1164
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1166
    :goto_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1167
    iget-boolean v1, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->d:Z

    if-eqz v1, :cond_2

    .line 1168
    const/16 v1, 0x9

    const/4 v6, -0x1

    invoke-virtual {v3, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1170
    :cond_2
    iget-object v1, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    iget-object v1, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1178
    iget-object v1, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showAssets:Lcom/cbs/app/view/fragments/show/model/ShowAssets;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showAssets:Lcom/cbs/app/view/fragments/show/model/ShowAssets;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowAssets;->filePathMycbsShowImage:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "orignial path is: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showAssets:Lcom/cbs/app/view/fragments/show/model/ShowAssets;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/model/ShowAssets;->filePathMycbsShowImage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showAssets:Lcom/cbs/app/view/fragments/show/model/ShowAssets;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowAssets;->filePathMycbsShowImage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cbs/app/view/utils/ImageHelper;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1181
    iget-object v1, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    move-object v0, v4

    .line 88
    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->a(ILcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;)V

    .line 89
    return-object p2

    .line 1144
    :cond_3
    iget-object v2, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1145
    iget-object v2, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1183
    :cond_4
    iget-object v0, v4, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1184
    sget-object v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->a:Ljava/lang/String;

    const-string v1, "failed to get filepath"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v4

    .line 84
    goto :goto_4

    .line 86
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter$MyShowViewHolder;

    goto :goto_4

    :cond_7
    move v1, v2

    goto/16 :goto_2

    :cond_8
    move v1, v2

    move v2, v3

    goto :goto_3

    :cond_9
    move-object v2, v5

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->getCount()I

    move-result v0

    .line 198
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setNewMyShowList(Lcom/cbs/app/view/model/FavoriteShowList;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/cbs/app/adapter/mycbs/MyShowAdapter;->g:Lcom/cbs/app/view/model/FavoriteShowList;

    .line 207
    return-void
.end method
