.class final Landroid/support/v7/widget/GridLayout$8;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2886
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlignmentValue(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 2894
    const/high16 v0, -0x80000000

    return v0
.end method

.method final getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2904
    const-string v0, "FILL"

    return-object v0
.end method

.method final getGravityOffset(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 2889
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeInCell(Landroid/view/View;II)I
    .locals 0

    .prologue
    .line 2899
    return p3
.end method
