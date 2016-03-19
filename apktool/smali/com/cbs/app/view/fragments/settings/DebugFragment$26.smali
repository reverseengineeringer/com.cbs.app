.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/widget/Spinner;

.field final synthetic c:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->b:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 964
    sget-object v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    if-eqz v1, :cond_2

    .line 965
    sget-object v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showItems:Ljava/util/ArrayList;

    .line 966
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 970
    if-eqz v1, :cond_2

    .line 971
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 972
    iget-wide v6, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    iget-object v5, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v5}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->g(Lcom/cbs/app/view/fragments/settings/DebugFragment;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move v2, v1

    .line 975
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 976
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 977
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    iget-object v5, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->a:Ljava/util/ArrayList;

    iget-wide v6, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->showId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 981
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    const v4, 0x1090008

    invoke-direct {v0, v1, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 983
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 984
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 985
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$26;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 989
    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 960
    return-void
.end method
