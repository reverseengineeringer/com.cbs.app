.class final Lcom/cbs/app/view/fragments/HomeFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/HomeFragment;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$2;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$2;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a()V

    .line 205
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 7

    .prologue
    const/16 v6, 0x18

    .line 139
    invoke-static {}, Lcom/cbs/app/view/fragments/HomeFragment;->f()Ljava/lang/String;

    .line 140
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;

    if-eqz v0, :cond_3

    .line 141
    check-cast p1, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;

    .line 142
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;->getShowVideoArray()[Lcom/cbs/app/view/model/ShowVideo;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_3

    .line 147
    iget-object v1, p0, Lcom/cbs/app/view/fragments/HomeFragment$2;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/ShowVideo;)Ljava/util/List;

    move-result-object v1

    .line 149
    new-instance v0, Lcom/cbs/app/view/fragments/HomeFragment$2$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/HomeFragment$2$1;-><init>(Lcom/cbs/app/view/fragments/HomeFragment$2;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    .line 173
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$2;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_2

    .line 180
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$2;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;)[Lcom/cbs/app/view/model/VideoData;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 182
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/view/fragments/HomeFragment$2;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbs/app/view/model/VideoData;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/VideoData;

    invoke-static {v2, v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/fragments/HomeFragment;[Lcom/cbs/app/view/model/VideoData;)[Lcom/cbs/app/view/model/VideoData;

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/HomeFragment$2;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/HomeFragment;->a()V

    .line 198
    return-void
.end method
