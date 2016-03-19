.class public final Lcom/emilsjolander/components/stickylistheaders/c;
.super Lcom/emilsjolander/components/stickylistheaders/b;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final d:Landroid/widget/SectionIndexer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/a;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/b;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/a;)V

    .line 13
    check-cast p2, Landroid/widget/SectionIndexer;

    iput-object p2, p0, Lcom/emilsjolander/components/stickylistheaders/c;->d:Landroid/widget/SectionIndexer;

    .line 14
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)J
    .locals 2

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->getCount()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/b;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getItemId(I)J
    .locals 2

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getItemViewType(I)I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getPositionForSection(I)I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/c;->d:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/c;->c(I)I

    move-result v0

    .line 20
    return v0
.end method

.method public final getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/c;->d(I)I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/c;->d:Landroid/widget/SectionIndexer;

    invoke-interface {v1, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/c;->d:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getViewTypeCount()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic hasStableIds()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEnabled(I)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->notifyDataSetChanged()V

    return-void
.end method

.method public final bridge synthetic notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->notifyDataSetInvalidated()V

    return-void
.end method

.method public final bridge synthetic registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/emilsjolander/components/stickylistheaders/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/b;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
