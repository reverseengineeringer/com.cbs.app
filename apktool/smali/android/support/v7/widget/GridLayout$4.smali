.class final Landroid/support/v7/widget/GridLayout$4;
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
    .line 2720
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlignmentValue(Landroid/view/View;II)I
    .locals 0

    .prologue
    .line 2728
    return p2
.end method

.method final getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2733
    const-string v0, "TRAILING"

    return-object v0
.end method

.method final getGravityOffset(Landroid/view/View;I)I
    .locals 0

    .prologue
    .line 2723
    return p2
.end method
