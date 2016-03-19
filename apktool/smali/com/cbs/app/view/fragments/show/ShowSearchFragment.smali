.class public Lcom/cbs/app/view/fragments/show/ShowSearchFragment;
.super Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/fragments/show/model/ShowItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;-><init>()V

    .line 22
    const-string v0, "xyzt1872361470@#$*$#)!@#&"

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->d()V

    .line 54
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->j:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 69
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->k:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->n:Ljava/util/ArrayList;

    .line 75
    :goto_1
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 76
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No shows found containing:\n\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(Ljava/util/ArrayList;)V

    .line 86
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto/16 :goto_0

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 87
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 88
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->m:Landroid/widget/TextView;

    const-string v1, "no shows contain only spaces"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_0

    .line 91
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    sget-object v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b:Lcom/cbs/app/view/fragments/show/model/ShowsGroups;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowsGroups;->showItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(Ljava/util/ArrayList;)V

    .line 92
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 93
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const-string v0, "xyzt1872361470@#$*$#)!@#&"

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->k:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->a(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getAllShows()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->setUpForSearch(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public setUpForSearch(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    const v0, 0x7f0f0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    const v0, 0x7f0f024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->m:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowSearchFragment;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 42
    const/high16 v0, -0x49000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    :cond_1
    return-void
.end method
