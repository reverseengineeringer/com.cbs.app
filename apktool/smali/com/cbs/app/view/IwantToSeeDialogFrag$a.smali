.class final Lcom/cbs/app/view/IwantToSeeDialogFrag$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/IwantToSeeDialogFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field b:Landroid/content/res/ColorStateList;

.field final synthetic c:Lcom/cbs/app/view/IwantToSeeDialogFrag;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/IwantToSeeDialogFrag;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->a:[Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->b:Landroid/content/res/ColorStateList;

    .line 119
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    .line 1128
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 112
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 139
    if-nez p2, :cond_0

    .line 140
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-static {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->b(Lcom/cbs/app/view/IwantToSeeDialogFrag;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-static {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->c(Lcom/cbs/app/view/IwantToSeeDialogFrag;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag;

    invoke-static {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->d(Lcom/cbs/app/view/IwantToSeeDialogFrag;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 148
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-object p2

    .line 145
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method
