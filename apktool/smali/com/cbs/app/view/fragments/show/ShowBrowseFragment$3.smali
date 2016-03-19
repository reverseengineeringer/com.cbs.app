.class final Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-boolean v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 202
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/Shows;->showGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 203
    new-array v3, v2, [Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 205
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/Shows;->showGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;->title:Ljava/lang/String;

    aput-object v0, v3, v1

    .line 204
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-interface {v0, v1, v3, v2}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;->a(I[Ljava/lang/String;Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;)V

    .line 209
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    sget-object v1, Lcom/cbs/app/analytics/Action;->bZ:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;Lcom/cbs/app/analytics/Action;)V

    .line 212
    :cond_1
    return-void
.end method
