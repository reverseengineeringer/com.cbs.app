.class final Landroid/support/v7/widget/GridLayout$5;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

.field final synthetic val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V
    .locals 0

    .prologue
    .line 2762
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlignmentValue(Landroid/view/View;II)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2772
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2774
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v0

    return v0

    .line 2772
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2774
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_1
.end method

.method final getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SWITCHING[L:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getGravityOffset(Landroid/view/View;I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2765
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2767
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v0

    return v0

    .line 2765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2767
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_1
.end method
