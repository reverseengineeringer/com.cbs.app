.class public Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/cbs/app/view/model/DeviceCast;

.field private d:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->b:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->c:Lcom/cbs/app/view/model/DeviceCast;

    .line 26
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 41
    const v0, 0x7f03002d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->b:Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    const-string v1, "deviceCast"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->c:Lcom/cbs/app/view/model/DeviceCast;

    .line 1066
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->c:Lcom/cbs/app/view/model/DeviceCast;

    if-eqz v0, :cond_2

    .line 1068
    const/4 v0, 0x0

    .line 1069
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->c:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/DeviceCast;->getFilepathIPadCastCarouselLandscape()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->c:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/DeviceCast;->getFilepathIPadCastCarouselLandscape()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1070
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->c:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getFilepathIPadCastCarouselLandscape()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1072
    :goto_0
    if-eqz v2, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->b:Landroid/view/View;

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1075
    check-cast v0, Landroid/widget/ImageView;

    .line 1077
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v1

    .line 1079
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1080
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1081
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->j(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1082
    :cond_0
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1083
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    const-wide/high16 v6, 0x406e000000000000L    # 240.0

    invoke-static {v4, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    .line 1084
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    const-wide v6, 0x4072c00000000000L    # 300.0

    invoke-static {v5, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v5

    .line 1085
    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    const-wide/high16 v8, 0x4079000000000000L    # 400.0

    invoke-static {v6, v8, v9}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v6

    .line 1086
    iget-object v7, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    invoke-static {v7}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1087
    sub-int/2addr v1, v5

    .line 1091
    :goto_1
    sub-int/2addr v1, v4

    .line 1092
    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 1098
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v1

    .line 1099
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->d:Landroid/app/Activity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v3

    .line 1101
    int-to-double v4, v1

    int-to-float v1, v3

    invoke-static {v2, v4, v5, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v1

    .line 1103
    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->c(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->b:Landroid/view/View;

    return-object v0

    .line 1089
    :cond_3
    sub-int/2addr v1, v6

    goto :goto_1

    .line 1094
    :cond_4
    div-int/lit8 v1, v1, 0x2

    .line 1095
    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberImageFragment;->b:Landroid/view/View;

    .line 59
    return-void
.end method
